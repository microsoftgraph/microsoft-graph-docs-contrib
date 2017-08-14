[!INCLUDE [1. Introduction](ios_intro.md)]

## Authenticating with Microsoft Graph

To revisit the UI workflow, the app is going to have the user authenticate, and then they'll have the ability to send a mail to a specified user. To make requests against the Microsoft Graph service, an authentication provider must be supplied which is capable of authenticating HTTPS requests with an appropriate OAuth 2.0 bearer token. In the sample project there's an authentication class already stubbed out called **AuthenticationProvider.m.** We will add a function to request, and acquire, an access token for calling the Microsoft Graph API. 

1. Open the Xcode project workspace (**O365-iOS-Microsoft-Graph-Connect-Swift.xcworkspace**), and open the file **AuthenticationClass.swift** Find the following code in that class.


  ```swift
    /**
     Authenticates to Microsoft Graph.
     If a user has previously signed in before and not disconnected, silent log in
     will take place.
     If not, authentication will ask for credentials
     */
    func connectToGraph(scopes: [String],
                        completion:@escaping (_ error: ApplicationConstants.MSGraphError?, _ accessToken: String) -> Void)  {
        
        var accessToken = String()
        do {
            if let initError = self.lastInitError {
                if initError.lengthOfBytes(using: String.Encoding.ascii) > 1 {
                    throw NSError.init(domain: initError, code: 0, userInfo: nil)
                }
            }
            // We check to see if we have a current logged in user. If we don't, then we need to sign someone in.
            // We throw an interactionRequired so that we trigger the interactive signin.
            
            if  try authenticationProvider.users().isEmpty {
                throw NSError.init(domain: "MSALErrorDomain", code: MSALErrorCode.interactionRequired.rawValue, userInfo: nil)
            } else {
                
                // Acquire a token for an existing user silently
                
                try authenticationProvider.acquireTokenSilent(forScopes: scopes, user: authenticationProvider.users().first) { (result, error) in
                    
                    if error == nil {
                        self.accessToken = (result?.accessToken)!
                        completion(nil, accessToken);
                        
                        
                    } else {
                        
                        //"Could not acquire token silently: \(error ?? "No error information" as! Error )"
                        completion(ApplicationConstants.MSGraphError.nsErrorType(error: error! as NSError), "");
                        
                    }
                }
            }
        }  catch let error as NSError {
            
            // interactionRequired means we need to ask the user to sign-in. This usually happens
            // when the user's Refresh Token is expired or if the user has changed their password
            // among other possible reasons.
            
            if error.code == MSALErrorCode.interactionRequired.rawValue {
                
                authenticationProvider.acquireToken(forScopes: scopes) { (result, error) in
                    if error == nil {
                        accessToken = (result?.accessToken)!
                        completion(nil, accessToken);
                        
                        
                    } else  {
                        completion(ApplicationConstants.MSGraphError.nsErrorType(error: error! as NSError), "");
                        
                    }
                }
                
            } else {
                completion(ApplicationConstants.MSGraphError.nsErrorType(error: error as NSError), error.localizedDescription);

            }
            
        } catch {
            
            // This is the catch all error.
            
            
            completion(ApplicationConstants.MSGraphError.nsErrorType(error: error as NSError), error.localizedDescription);
            
        }
    }
  ```


2. Finally we'll call this method from **ConnectViewController.swift**. This controller is the default view that the app loads, and there is a single button named **Connect** that the user will tap that will initiate the authentication process. This method takes in one parameter, the **scopes**, we'll discuss scopes in more detail below. Add the following action to **ConnectViewController.swift**.

  ```swift
  // MARK: Authentication
  private extension ConnectViewController {
      func authenticate() {
          loadingUI(show: true)
        
          let scopes = ApplicationConstants.kScopes
        
          AuthenticationClass.sharedInstance?.connectToGraph( scopes: scopes) {
              (error, accessToken) in
            
              defer {self.loadingUI(show: false)}
            
              if let graphError = error {
                  switch graphError {
                  case .nsErrorType(let nsError):
                      print(NSLocalizedString("ERROR", comment: ""), nsError.userInfo)
                      self.showError(message: NSLocalizedString("CHECK_LOG_ERROR", comment: ""))
                  }
              }
              else {
                  // run on main thread!!
                  DispatchQueue.main.async {
                      self.performSegue(withIdentifier: "sendMail", sender: nil)
                  }
                
              }
                
          }
      }
  }

  ```

## Send an email with Microsoft Graph

After configuring the project to be able to authenticate, the next tasks are sending a mail to a user using the Microsoft Graph API. By default the logged in user will be the recipient, but you have the ability to change it to any other recipient. The code we'll work with here is in the class **SendMailViewController.swift.** You'll see that there is other code represented here for the UI, and a helper method to retrieve user profile information from the Microsoft Graph service. We'll concentrate on the methods for creating a mail message and sending that message.

1. Open **SendMailViewController.swift.**  and find the following helper method in the class:

  ```swift
      /**
     Prepare mail content by loading the files from resources and replacing placeholders with the
     HTML body.
     */
    func mailContent() -> Data? {
        
        if let emailFilePath = Bundle.main.path(forResource: "EmailPostContent", ofType: "json"),
            let emailBodyFilePath = Bundle.main.path(forResource: "EmailBody", ofType: "html")
        {
            do {
                // Prepare upload content
                let emailContent = try String(contentsOfFile: emailFilePath, encoding: String.Encoding.utf8)
                let emailBodyRaw = try String(contentsOfFile: emailBodyFilePath, encoding: String.Encoding.utf8)
                // Request doesn't accept a single quotation mark("), so change it to the acceptable form (\")
                let emailValidBody = emailBodyRaw.replacingOccurrences(of: "\"", with: "\\\"")
                
                let emailPostContent = emailContent.replacingOccurrences(of: "<EMAIL>", with: self.emailTextField.text!)
                    .replacingOccurrences(of: "<CONTENTTYPE>", with: "HTML")
                    .replacingOccurrences(of: "<CONTENT>", with: emailValidBody)
                
                return emailPostContent.data(using: String.Encoding.utf8)
            }
            catch {
                // Error handling in case file loading fails.
                return nil
            }
        }
        // Error handling in case files aren't present.
        return nil
    }

  ```

2. Find the following send mail method in the class.  

  ```swift
      func sendMailRestWithContent(_ content: Data) {
        
        // Acquire an access token, if logged in already, this shouldn't bring up an authentication window.
        // However, if the token is expired, user will be asked to sign in again.
        AuthenticationClass.sharedInstance?.connectToGraph(scopes: ApplicationConstants.kScopes) {
            (result: ApplicationConstants.MSGraphError?, accessToken: String) -> Void in
            

            if  ((AuthenticationClass.sharedInstance?.accessToken) == nil){
                // Upon failure, alert and go back.
                let localizedDescription: String = ApplicationConstants.MSGraphError.nsErrorType(error: result! as NSError).localizedDescription
                print(localizedDescription)
                
                let alertController = UIAlertController(title: "Error", message: ApplicationConstants.MSGraphError.nsErrorType(error: result! as NSError).localizedDescription, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Close", style: .destructive, handler: {
                    (action) -> Void in
                    AuthenticationClass.sharedInstance?.disconnect()
                    self.navigationController!.popViewController(animated: true)
                }))
                
                self.present(alertController, animated: true, completion: nil)
 
            } else {
                // Upon success, send mail.
                let request = NSMutableURLRequest(url: URL(string: "https://graph.microsoft.com/v1.0/me/microsoft.graph.sendmail")!)
                request.httpMethod = "POST"
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                request.setValue("application/json, text/plain, */*", forHTTPHeaderField: "Accept")
                
                let accessToken = AuthenticationClass.sharedInstance?.accessToken
                request.setValue("Bearer \(accessToken!)" as String, forHTTPHeaderField: "Authorization")
                request.httpBody = content
                
                
                let task = URLSession.shared.dataTask(with:request as URLRequest, completionHandler: {
                    (data, response, error) in
                    
                    if let _ = error {
                        print(error as Any )
                        self.updateUI(showActivityIndicator: false, statusText: self.failureString)
                        return
                    }
                    
                    let statusCode = (response as! HTTPURLResponse).statusCode
                    
                    if statusCode == 202 {
                        self.updateUI(showActivityIndicator: false, statusText: self.successString)
                    }
                    else {
                        print("response: \(response!)")
                        print(String(data: data!, encoding: String.Encoding.utf8) as Any )
                        self.updateUI(showActivityIndicator: false, statusText: self.failureString)
                    }
                })
                
                task.resume()
            }
        }
    }

  ```

So **mailContent** creates a draft HTML sample mail to use for demo purposes. The next method, **sendMailRestWithContent**, then takes that message and executes the request to send it. Again the default recipient is the signed-in user.


## Run the app
1. Before running the sample you'll need to supply the client ID you received from the registration process in the section **Register the app.** Open **AuthenticationConstants.java** . You'll see that the ClientID from the registration process can be added to the top of the file.:  

  ```swift
		// You will set your application's clientId
		    static let ClientId    = "[ENTER_YOUR_CLIENT_ID]"
			static let ResourceId  = "https://graph.microsoft.com"
			static let kAuthority  = "https://login.microsoftonline.com/common/oauth2/v2.0"
			static let kGraphURI   = "https://graph.microsoft.com/v1.0/me/"
			static let kScopes: [String] = ["https://graph.microsoft.com/Mail.ReadWrite","https://graph.microsoft.com/Mail.Send","https://graph.microsoft.com/Files.ReadWrite","https://graph.microsoft.com/User.ReadBasic.All"]
  ```

> Note: You'll notice that the following permission scopes have been configured for this project: **"https://graph.microsoft.com/Mail.Send", "https://graph.microsoft.com/User.Read", "offline_access"**. The service calls used in this project, sending a mail to your mail account and retrieving some profile information (Display Name, Email Address) require these permissions for the app to run properly.

2. Run the sample, tap **Connect,** sign in with your personal or work or school account, and grant the requested permissions.

3. Choose the **Send email** button. When the mail is sent, a success message is displayed below the button.

## Next steps
- Try out the REST API using the [Graph explorer](https://graph.microsoft.io/graph-explorer).
- Find examples of common operations for both REST and SDK operations in the [Microsoft Graph iOS Objective C Snippets Sample](https://github.com/microsoftgraph/ios-objectiveC-snippets-sample).

## See also
- [Azure AD v2.0 protocols](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-protocols/)
- [Azure AD v2.0 tokens](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-tokens/)
