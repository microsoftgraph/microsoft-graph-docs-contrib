---
title: "Generate proof-of-possession tokens for rolling keys and update certificates programmatically"
description: "Learn how to generate a proof-of-possession (PoP) token that is required as part of the request validation for the addKey and removeKey methods on apps and service principals."
ms.localizationpriority: high
ms.subservice: entra-applications
ms.topic: how-to
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: saurabh.madan, odaishalabi
ms.date: 06/12/2024
#customer intent: As a developer, I want to automate the process of rolling keys for applications and service principals.
---

# Generate proof-of-possession tokens for rolling keys and update certificates programmatically

You can use the **addKey** and **removeKey** methods defined on the [application](/graph/api/resources/application) and [servicePrincipal](/graph/api/resources/serviceprincipal) resources to roll expiring keys programmatically.

As part of the request validation for these methods, a proof-of-possession (PoP) of an existing key is verified before the methods can be invoked. The proof is represented by a self-signed JSON Web Token (JWT). This token must be signed using the private key of one of the application's existing valid certificates. The recommended lifespan for the token is 10 minutes.

This article provides code examples in C# to demonstrate how to:
1. Compute the client assertion by using an existing valid certificate.
2. Generate the PoP token by using the generated client assertion key.
3. Use the PoP token to upload a new certificate to the app or service principal object using the **addKey** method.
4. Use the PoP token to remove a certificate from the app or service principal object using the **removeKey** method.

> [!IMPORTANT]
> Applications that don't have any existing *valid* certificates because certificates haven't been added yet or existing certificates have expired can't use this service action. Instead, use the [Update application](/graph/applications-how-to-add-certificate) operation to update the **keyCredential** property.

## Prerequisites

- Have a valid client certificate on the target app or service principal. 
  - You need the details of a valid existing vertificate to generate the client assertion key and PoP token.
    - For testing purposes, you can use a self-signed certificate. To learn how to create a self-signed certificate, see [Create a self-signed public certificate to authenticate your application](/entra/identity-platform/howto-create-self-signed-certificate).
    - Export the certificate with its private key in `.pfx` format. You can alternatively update the script to only require the public certificate without the private key.
- The client ID (called **appId** on the API) and object ID (called **id** on the API) of the application or service principal for which you're generating the PoP token.   

## Sample code

The token should contain the following claims:

- **aud**: Audience needs to be `00000002-0000-0000-c000-000000000000`.
- **iss**: Issuer should be the ID of the **application** or **servicePrincipal** object that initiates the request.
- **nbf**: Not before time.
- **exp**: Expiration time should be the value of **nbf** + 10 minutes.

# [Program.cs](#tab/csharp)

```csharp
using System;
using System.Security.Cryptography.X509Certificates;
using System.Net;
using System.Net.Http;
using Microsoft.IdentityModel.Tokens;

namespace SampleCertCall
{
    class Program
    {
        static void Main(string[] args)
        {
            //=============================
            // Global variables which will be used to store app registation info, you can use appsettings.json to store such data
            //=============================
            string clientId = "Enter_the_Application_Id_Here"; //client ID or appId of the target app or service principal
            string tenantID = "Enter_the_Tenant_Id_Here"; // Tenant ID value
            string scopes = "https://graph.microsoft.com/.default"; // The "https://graph.microsoft.com/.default" is required in the client credentials flow, see the consent documentation (https://learn.microsoft.com/en-us/entra/identity-platform/scopes-oidc#the-default-scope)
            string objectId = "Enter_the_Object_Id_Here"; // The object ID is the identifier of the app or service principal you want to work with. Depending on the endpoint you use, it can be either the application objectId (https://graph.microsoft.com/v1.0/applications)) or the service principal objectId (https://graph.microsoft.com/v1.0/ServicePrincipals)).
            string api = "Graph_API/ENDPOINT"; // Choose the graph endpoint you need to use, depending on whether you are working with (https://graph.microsoft.com/v1.0/applications) or (https://graph.microsoft.com/v1.0/servicePrincipals)
            string aud_POP = "00000002-0000-0000-c000-000000000000"; // audience for client assertion must always be 00000002-0000-0000-c000-000000000000
            string aud_ClientAssertion = "https://login.microsoftonline.com/{YOUR_TENANT_ID_HERE}/v2.0"; // audience for PoP must always be in the format https://login.microsoftonline.com/{YOUR_TENANT_ID_HERE}/v2.0

            // pfxFilePath -> Use an existing valid cert used/uploaded to the app or service principal to generate access token and PoP token.
            string pfxFilePath = "Current_Active_Certificate_Path"; // Replace the file path with the location of your certificate.
            string password = "Current_Active_Certificate_Password"; // If applicable, replace the password value with your certificate password.
            X509Certificate2 signingCert = null;
            try
            {
                if (!password.IsNullOrEmpty())
                    signingCert = new X509Certificate2(pfxFilePath, password);
                else
                    signingCert = new X509Certificate2(pfxFilePath);
            }
            catch (System.Security.Cryptography.CryptographicException ex)
            {
                Console.WriteLine("Check the old/uploaded certificate {CertificateDiskPath}, you need to add a correct certificate path and/or password for this sample to work\n" + ex.Message);
                Environment.Exit(-1);
            }

            // newCerFilePath -> This is the new cert which will be uploaded. The cert can also be stored in Azure Key Vault.
            string newCerFilePath = "New_Certificate_Path"; // Replace the file path with the location of your new certificate to be uploaded using the Graph API.
            string newCertPassword = "New_Certificate_Password"; // If applicable, replace the password value with your new certificate password.
            X509Certificate2 newCert = null;
            try
            {
                if (newCertPassword != "")
                    newCert = new X509Certificate2(newCerFilePath, newCertPassword);
                else
                    newCert = new X509Certificate2(newCerFilePath);
            }
            catch (System.Security.Cryptography.CryptographicException ex)
            {
                Console.WriteLine("Check the new certificate {NewCertificateDiskPath}, you need to add a correct certificate path and/or password for this sample to work\n" + ex.Message);
                Environment.Exit(-1);
            }

             //========================
             //Get acessToken via client assertion
             //========================
             var client_assertion = Helper.GenerateClientAssertion(aud_ClientAssertion, clientId, signingCert);
             var token = Helper.GenerateAccessTokenWithClientAssertion(client_assertion, clientId, tenantID);

            //========================
            //Get PoP Token
            //========================
            var poP = Helper.GeneratePoPToken(objectId, aud_POP, signingCert);

            // Get the new certificate info which will be uploaded via Microsoft Graph API call
            var key = Helper.GetCertificateKey(newCert);
            var graphClient = Helper.GetGraphClient(scopes, tenantID, clientId, signingCert);

            int choice = -1;
            while (choice != 0)
            {
                Console.WriteLine("\n=================================================");
                Console.WriteLine("Please choose one of the following options:");
                Console.WriteLine("=================================================");
                Console.WriteLine("0. Exit");
                Console.WriteLine("1. Display access token");
                Console.WriteLine("2. Display client assertion");
                Console.WriteLine("3. Display PoP token");
                Console.WriteLine("4. Display certificate Info");
                Console.WriteLine("5. Upload certificate using Graph SDK");
                Console.WriteLine("6. Upload certificate using Graph API");
                Console.WriteLine("7. Delete certificate using Graph SDK");
                Console.WriteLine("8. Delete certificate using Graph API");
                Console.WriteLine("\nEnter the choose number here:");
                choice = Int32.TryParse(Console.ReadLine(), out choice) ? choice : -1;

                HttpStatusCode code;
                KeyCredential response;
                string certID;
                Guid val;

                // Process user choice
                switch (choice)
                {
                    case 0:
                        // Exit the program
                        Console.WriteLine("\nGoodbye...\n");
                        break;
                    case 1:
                        // Display access token
                        Console.WriteLine("\n\"Access Token Value is:\"\n__________________");
                        Console.WriteLine($"Access Token: {token}");
                        Console.WriteLine("__________________\n");
                        break;
                    case 2:
                        // Display client assertion
                        Console.WriteLine("\n\"Client Assertion Token Value is\"\n__________________");
                        Console.WriteLine($"client_assertion: {client_assertion}");
                        Console.WriteLine("__________________\n");
                        break;
                    case 3:
                        // Display client assertion
                        Console.WriteLine("\n\"Proof of Possession Token Value is\"\n__________________");
                        Console.WriteLine($"PoP token: {poP}");
                        Console.WriteLine("__________________\n");
                        break;
                    case 4:
                        // Display certificate key
                        Helper.DisplayCertificateInfo(newCert);
                        break;
                    case 5:
                        // Call the addKey SDK using Graph SDK
                        if (newCertPassword != "")
                        {
                            response = GraphSDK.AddKeyWithPassword_GraphSDKAsync(poP, objectId, key, newCertPassword, graphClient).GetAwaiter().GetResult();
                        }
                        else
                        {
                            response = GraphSDK.AddKey_GraphSDKAsync(poP, objectId, key, graphClient).GetAwaiter().GetResult();
                        }
                        if (response != null)
                        {
                            Console.WriteLine("\n______________________");
                            Console.WriteLine("Uploaded Successfully!");
                            Console.WriteLine("______________________\n");
                        }
                        else
                        {
                            Console.WriteLine("\n______________________");
                            Console.WriteLine("Something went wrong!");
                            Console.WriteLine("______________________\n");
                        }

                        break;
                    case 6:
                        // Call the addKey API directly without using SDK
                        if (!password.IsNullOrEmpty())
                        {
                            code = GraphAPI.AddKeyWithPassword(poP, objectId, api, token, key, newCertPassword);
                        }
                        else
                        {
                            code = GraphAPI.AddKey(poP, objectId, api, token, key);
                        }
                        if (code == HttpStatusCode.OK)
                        {
                            Console.WriteLine("\n______________________");
                            Console.WriteLine("Uploaded Successfully!");
                            Console.WriteLine("______________________\n");
                        }
                        else
                        {
                            Console.WriteLine("\n______________________");
                            Console.WriteLine("Something went wrong!");
                            Console.WriteLine("HTTP Status code is " + code);
                            Console.WriteLine("______________________\n");
                        }
                        break;
                    case 7:
                        // Call the removeKey API using Graph SDK
                        Console.WriteLine("\nEnter certificate ID that you want to delete:");
                        certID = Console.ReadLine();

                        if (Guid.TryParse(certID, out val))
                        {
                            var res = GraphSDK.RemoveKey_GraphSDKAsync(poP, objectId, certID, graphClient).GetAwaiter().GetResult();

                            if (res)
                            {
                                Console.WriteLine("\n______________________");
                                Console.WriteLine("Cert Deleted Successfully!");
                                Console.WriteLine("_____________________\n");
                            }
                            else
                            {
                                Console.WriteLine("\n______________________");
                                Console.WriteLine("Something Went Wrong!");
                                Console.WriteLine("ERROR: Unable to delete certificate");
                                Console.WriteLine("______________________\n");
                            }
                        }
                        else
                        {
                            Console.WriteLine("\n______________________");
                            Console.WriteLine("ERROR: Invalid Certificate ID");
                            Console.WriteLine("______________________\n");
                        }
                        break;
                    case 8:
                        // Call the removeKey API directly without using API
                        Console.WriteLine("\nEnter certificate ID that you want to delete:");
                        certID = Console.ReadLine();
                        try
                        {
                            if (Guid.TryParse(certID, out val))
                            {
                                code = GraphAPI.RemoveKey(poP, objectId, api, certID, token);

                                if (code == HttpStatusCode.NoContent)
                                {
                                    Console.WriteLine("\n______________________");
                                    Console.WriteLine("Cert Deleted Successfully!");
                                    Console.WriteLine("______________________\n");
                                }
                                else
                                {
                                    Console.WriteLine("\n______________________");
                                    Console.WriteLine("Something went wrong!");
                                    Console.WriteLine("HTTP Status code is " + code);
                                    Console.WriteLine("______________________\n");
                                }
                            }
                            else
                            {
                                Console.WriteLine("\n------------------------------");
                                Console.WriteLine("ERROR: Invalid Certificate ID");
                                Console.WriteLine("______________________________\n");
                            }
                        }

                        catch (HttpRequestException ex)
                        {
                            Console.WriteLine(ex.InnerException.Message);
                            Console.WriteLine("\n______________________");
                            Console.WriteLine("ERROR: " + ex.Message);
                            Console.WriteLine("______________________\n");
                        }
                        break;
                    default:
                        Console.WriteLine("\n______________________");
                        Console.WriteLine("Invalid choice");
                        Console.WriteLine("______________________\n");
                        break;
                }

            }
        }
    }
}
```

# [Helper.cs](#tab/csharp-1)
```csharp
using Azure.Identity;
using Microsoft.Graph;
using Microsoft.IdentityModel.JsonWebTokens;
using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Security.Cryptography.X509Certificates;

namespace SampleCertCall
{
    class Helper
    {
        public static string GenerateClientAssertion(string aud, string clientId, X509Certificate2 signingCert)
        {
            Guid guid = Guid.NewGuid();

            // aud and iss are the only required claims.
            var claims = new Dictionary<string, object>()
            {
                { "aud", aud },
                { "iss", clientId },
                { "sub", clientId },
                { "jti", guid}
            };

            // token validity should not be more than 10 minutes
            var now = DateTime.UtcNow;
            var securityTokenDescriptor = new SecurityTokenDescriptor
            {
                Claims = claims,
                NotBefore = now,
                Expires = now.AddMinutes(10),
                SigningCredentials = new X509SigningCredentials(signingCert)
            };

            var handler = new JsonWebTokenHandler();
            // Get Client Assertion
            var client_assertion = handler.CreateToken(securityTokenDescriptor);

            return client_assertion;
        }

        public static string GenerateAccessTokenWithClientAssertion(string client_assertion, string clientId, string tenantID)
        {
            // GET ACCESS TOKEN
            var data = new[]
            {
                new KeyValuePair<string, string>("client_id", clientId),
                new KeyValuePair<string, string>("client_assertion_type", "urn:ietf:params:oauth:client-assertion-type:jwt-bearer"),
                new KeyValuePair<string, string>("client_assertion", client_assertion),
                new KeyValuePair<string, string>("grant_type", "client_credentials"),
                new KeyValuePair<string, string>("scope", "https://graph.microsoft.com/.default"),
            };

            var client = new HttpClient();
            var url = $"https://login.microsoftonline.com/{tenantID}/oauth2/v2.0/token";
            var res = client.PostAsync(url, new FormUrlEncodedContent(data)).GetAwaiter().GetResult();
            var token = "";
            using (HttpResponseMessage response = res)
            {
                response.EnsureSuccessStatusCode();
                string responseBody = response.Content.ReadAsStringAsync().GetAwaiter().GetResult();
                JObject obj = JObject.Parse(responseBody);
                token = (string)obj["access_token"];
            }

            return token;
        }

        public static string GeneratePoPToken(string objectId, string aud, X509Certificate2 signingCert)
        {
            Guid guid = Guid.NewGuid();

            // aud and iss are the only required claims.
            var claims = new Dictionary<string, object>()
            {
                { "aud", aud },
                { "iss", objectId }
            };

            // token validity should not be more than 10 minutes
            var now = DateTime.UtcNow;
            var securityTokenDescriptor = new SecurityTokenDescriptor
            {
                Claims = claims,
                NotBefore = now,
                Expires = now.AddMinutes(10),
                SigningCredentials = new X509SigningCredentials(signingCert)
            };

            var handler = new JsonWebTokenHandler();
            var poP = handler.CreateToken(securityTokenDescriptor);
            // Console.WriteLine("\n\"Generate Proof of Possession Token:\"\n--------------------------------------------");
            // Console.WriteLine($"PoP: {poP}");

            return poP;
        }

        public static string GetCertificateKey(X509Certificate2 cert)
        {
            return Convert.ToBase64String(cert.GetRawCertData());
        }

        public static void DisplayCertificateInfo(X509Certificate2 cert)
        {

            Console.WriteLine("\n[Certificate info which will be used in the request body {keyCredential resource type}]");
            Console.WriteLine("__________________________________________________________________________________________\n");
            Console.WriteLine($"customKeyIdentifier (Thumbprint):  {cert.Thumbprint}");
            Console.WriteLine("");
            Console.WriteLine($"key: {Convert.ToBase64String(cert.GetRawCertData())}");
            Console.WriteLine("");
            Console.WriteLine($"displayName: {cert.Subject}");
            Console.WriteLine("");
            Console.WriteLine($"startDateTime: {Convert.ToDateTime(cert.GetEffectiveDateString()).ToString("yyyy-MM-ddTHH:mm:ssZ")}");
            Console.WriteLine("");
            Console.WriteLine($"endDateTime: {Convert.ToDateTime(cert.GetExpirationDateString()).ToString("yyyy-MM-ddTHH:mm:ssZ")}");
            Console.WriteLine("__________________________________________________________________________________________\n");
        }

        public static GraphServiceClient GetGraphClient(string scopes, string tenantId, string clientId, X509Certificate2 signingCert)
        {
            // using Azure.Identity;
            var options = new ClientCertificateCredentialOptions
            {
                AuthorityHost = AzureAuthorityHosts.AzurePublicCloud
            };

            // https://docs.microsoft.com/dotnet/api/azure.identity.clientcertificatecredential
            var clientCertificateCredential = new ClientCertificateCredential(
                tenantId, clientId, signingCert, options);

            var graphClient = new GraphServiceClient(clientCertificateCredential, [scopes]);

            return graphClient;
        }

    }
}
```

# [GraphAPI.cs](#tab/csharp-2)
```csharp
using Newtonsoft.Json;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;


namespace SampleCertCall
{
    class GraphAPI
    {
        public static HttpStatusCode AddKeyWithPassword(string poP, string objectId, string api, string accessToken, string key, string password)
        {
            var client = new HttpClient();
            var url = $"{api}/{objectId}/addKey";

            var defaultRequestHeaders = client.DefaultRequestHeaders;
            if (defaultRequestHeaders.Accept == null || !defaultRequestHeaders.Accept.Any(m => m.MediaType == "application/json"))
            {
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            }
            defaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

            var payload = new
            {
                keyCredential = new
                {
                    type = "X509CertAndPassword",
                    usage = "Sign",
                    key,
                },
                passwordCredential = new
                {
                    secretText = password,
                },
                proof = poP
            };
            var stringPayload = JsonConvert.SerializeObject(payload);
            var httpContent = new StringContent(stringPayload, Encoding.UTF8, "application/json");

            var res = client.PostAsync(url, httpContent).Result;

            return res.StatusCode;
        }

        public static HttpStatusCode AddKey(string poP, string objectId, string api, string accessToken, string key)
        {
            var client = new HttpClient();
            var url = $"{api}/{objectId}/addKey";

            var defaultRequestHeaders = client.DefaultRequestHeaders;
            if (defaultRequestHeaders.Accept == null || !defaultRequestHeaders.Accept.Any(m => m.MediaType == "application/json"))
            {
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            }
            defaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

            string pass = null;
            var payload = new
            {
                keyCredential = new
                {
                    type = "AsymmetricX509Cert",
                    usage = "Verify",
                    key,
                },
                passwordCredential = pass,
                proof = poP
            };
            var stringPayload = JsonConvert.SerializeObject(payload);
            var httpContent = new StringContent(stringPayload, Encoding.UTF8, "application/json");

            var res = client.PostAsync(url, httpContent).Result;

            return res.StatusCode;
        }

        public static HttpStatusCode RemoveKey(string poP, string objectId, string api, string keyId, string accessToken)
        {
            var client = new HttpClient();
            var url = $"{api}/{objectId}/removeKey";
            var defaultRequestHeaders = client.DefaultRequestHeaders;
            if (defaultRequestHeaders.Accept == null || !defaultRequestHeaders.Accept.Any(m => m.MediaType == "application/json"))
            {
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            }
            defaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

            var payload = new
            {
                keyId,
                proof = poP
            };
            var stringPayload = JsonConvert.SerializeObject(payload);
            var httpContent = new StringContent(stringPayload, Encoding.UTF8, "application/json");


            var res = client.PostAsync(url, httpContent).Result;
            var contents = res.Content.ReadAsStringAsync().Result;

            if (res.Content.ReadAsStringAsync().Result.Contains("No credentials found to be removed"))
            {
                throw new HttpRequestException("CertID Not Found", new HttpRequestException(contents, null, res.StatusCode));
            }

            if (res.Content.ReadAsStringAsync().Result.Contains("Access Token missing or malformed"))
            {
                throw new HttpRequestException("proof-of-possession (PoP) token is invalid", new HttpRequestException(contents, null, res.StatusCode));
            }

            return res.StatusCode;
        }
    }
}
```

# [GraphSDK.cs](#tab/csharp-3)
```csharp
using Microsoft.Graph;
// using Microsoft.Graph.ServicePrincipals.Item.AddKey; // Dependencies for the AddKey service principal method
// using Microsoft.Graph.ServicePrincipals.Item.RemoveKey; // Dependencies for the RemoveKey service principal method
using Microsoft.Graph.Applications.Item.AddKey;
using Microsoft.Graph.Applications.Item.RemoveKey;
using Microsoft.Graph.Models;
using System;
using System.Threading.Tasks;


namespace SampleCertCall
{
    class GraphSDK
    {
        // Using GraphSDK instead of calling the API directly
        public static async Task<KeyCredential> AddKey_GraphSDKAsync(string proof, string objectId, string key, GraphServiceClient graphClient)
        {
            var requestBody = new AddKeyPostRequestBody
            {
                KeyCredential = new KeyCredential
                {
                    Type = "AsymmetricX509Cert",
                    Usage = "Verify",
                    Key = Convert.FromBase64String(key)
                },
                PasswordCredential = null,
                Proof = proof
            };

            // var res = await graphClient.ServicePrincipals[objectId].AddKey.PostAsync(requestBody); // Uncomment this to upload a certificate to a service principal and the using statement at the top
            var res = await graphClient.Applications[objectId].AddKey.PostAsync(requestBody);

            return res;
        }

        public static async Task<KeyCredential> AddKeyWithPassword_GraphSDKAsync(string proof, string objectId, string key, string password, GraphServiceClient graphClient)
        {
            var requestBody = new AddKeyPostRequestBody
            {
                KeyCredential = new KeyCredential
                {
                    Type = "X509CertAndPassword",
                    Usage = "Sign",
                    Key = Convert.FromBase64String(key)
                },
                PasswordCredential = new PasswordCredential
                {
                    SecretText = password
                },
                Proof = proof
            };

            // var res = await graphClient.ServicePrincipals[objectId] // Uncomment this to upload a certificate to a service principal and the using statement at the top
            var res = await graphClient.Applications[objectId] // Upload a certificate to the application
                        .AddKey
                        .PostAsync(requestBody);

            return res;
        }

        public static async Task<bool> RemoveKey_GraphSDKAsync(string proof, string objectId, string certID, GraphServiceClient graphClient)
        {
            var keyId = Guid.Parse(certID);

            try
            {
                var requestBody = new RemoveKeyPostRequestBody
                {
                    KeyId = keyId,
                    Proof = proof
                };

                // await graphClient.ServicePrincipals[objectId] // Uncomment this to remove a certificate from a service principal and the using statement at the top
                await graphClient.Applications[objectId] // Remove a certificate from the application
                    .RemoveKey
                    .PostAsync(requestBody);

                return true;
            }
            catch (Exception ex)
            {
                Console.Write($"Exception RemoveKey_GraphSDKAsync: {Environment.NewLine}{ex.Message}{Environment.NewLine}{ex.StackTrace}");

                return false;
            }
        }
    }
}
```


<!--
Deactivate PS script because of customer complaints that it doesn't work.

# [PowerShell](#tab/powershell)

```powershell
# $PfxFilePath represents the path to which you exported the .pfx certificate. 
# $ObjectID is the ID of the service principal or the application for which you are running the addKey or removeKey action that requires this proof of possession token.

param (
    [Parameter(Mandatory = $true)]
    [string]$PfxFilePath,
    
    [SecureString]$Password = (Read-Host 'Provide Certificate Password' -AsSecureString),
    
    [Parameter(Mandatory = $true)]
    [string]$ObjectID
)

# install the following Microsoft Graph PowerShell modules
Install-Module Microsoft.Graph.Authentication -Scope CurrentUser
Import-Module Microsoft.Graph.Authentication

# audience
$aud = "00000002-0000-0000-c000-000000000000"

# aud and iss are the only required claims.
$claims = [System.Collections.Generic.Dictionary[string,object]]::new()
$claims.aud = $aud
$claims.iss = $objectId

# token validity should not be more than 10 minutes
$now = (Get-Date).ToUniversalTime()
$securityTokenDescriptor = [Microsoft.IdentityModel.Tokens.SecurityTokenDescriptor]@{
    Claims = $claims
    NotBefore = $now
    Expires = $now.AddMinutes(10)
    SigningCredentials = [Microsoft.IdentityModel.Tokens.X509SigningCredentials]::new($cert)
}
$handler = [Microsoft.IdentityModel.JsonWebTokens.JsonWebTokenHandler]::new()
$token = $handler.CreateToken($securityTokenDescriptor)
Write-Output $token
```
-->
---

You can also generate the proof using signature in Azure KeyVault. It's important to note that padding character '=' must not be included in the JWT header and payload or an **Authentication_MissingOrMalformed** error is returned.

## Related content

Now that you have your PoP token, you can use it to:
- [Add a key](/graph/api/application-addkey) or [remove a key](/graph/api/application-removekey) from your application.
- [Add a key](/graph/api/serviceprincipal-addkey) or [remove a key](/graph/api/serviceprincipal-removekey) from your service principal.

To learn more about client assertions, see [Microsoft identity platform application authentication certificate credentials](/entra/identity-platform/certificate-credentials#claims-payload).
