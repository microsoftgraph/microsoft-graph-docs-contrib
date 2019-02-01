# Microsoft Graph SDK for Java
## What is Microsoft Graph?
Microsoft Graph is a unified endpoint for accessing data, intelligence, and insights coming from the Microsoft cloud. You can find more information at [developer.microsoft.com/graph](https://developer.microsoft.com/graph). You can also get started trying out queries right away against your own account using the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

## Why an SDK?
Users can begin developing immediately by connecting with the REST API directly if they desire. If you are interested in diving right into Graph data, the SDK provides a few shortcuts:

- HTTP logic is written for you so you reduce the amount of boilerplate you need to get started.
- The SDK gives you access to POJOs that you can use to access and update instead of working directly with JSON.
- An extra layer of error handling and intelligent defaults help you debug your application.
- Request builders make it easy for you to discover the paths through which you can access the rich data stores in Graph.
- Helpers for Graph functionality, such as pagination and webhooks, as well as workload-specific helpers for products, such as OneNote and Planner, simplify accomplishing specific scenarios.

## Using the SDK with an Authentication Library
Currently, the SDK does not handle authentication against Azure Active Directory. You need to select an OAuth2 package that suits your authentication needs. First-party auth libraries are available from Azure AD:
- [MSAL](https://github.com/AzureAD/microsoft-authentication-library-for-android): Microsoft Authentication Library - supports converged auth for both consumer and business accounts (Android)
- [ADAL](https://github.com/AzureAD/azure-activedirectory-library-for-java): Azure Active Directory Library - supports v1 auth for business accounts