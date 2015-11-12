# Using Microsoft Graph API client library

<!--_**Applies to:** Office 365_
 
In this article:
  
- [Using the .NET client library](#msg_using_client_lib)
  - [Set up a Visual Studio project](#msg_set_up_visual_studio)
  - [Initialize the Microsoft Graph API client](#msg_initialize_client)
  - [Map client library object model to the entity schema](#msg_client_lib_object_model)
  - [Access and manipulate resources with the client library](#msg_access_and_manipulate_resources_with_client_library)
  - [Use query options with the client library](#msg_query_options_with_client_library)

<a name="msg_using_client_lib"> </a>  -->

## Using the .NET client library
A Microsoft Graph API native app uses the Microsoft Graph API client library to access and manipulate the API resources. 
The client library exposes a .NET application object model that encapsulates the Microsoft Graph API data model ($metadata),
mapping an OData resource type into a .NET class. 

The CRUD operations in the REST API are translated as calls to the `ExecuteAsync`, `UpdateAsync`, and `DeleteAsync` methods 
on the corresponding resource class.  The query options (e.g., $select, $filter, etc.) are turned into Linq clauses.  
There is a strong similarity between calling the REST API and using the client library. The client library's object model is closely mapped to the OData entity type schema. 


<!--<a name="msg_set_up_visual_studio"> </a>  -->

###Set up a Visual Studio Project
The Microsoft Graph API client library is available for download as a NuGet package. You can download it using Visual Studio after you have created a Visual Studio solution/project. 

>For more information on how to set up a Visual Studio project to call .NET client library, see this [Microsoft Graph API .NET client library sample app](http://aka.ms/o365-win-profile)
 
<a name="msg_initialize_client"> </a> 
###Initialize the Microsoft Graph API client
For every Microsoft Graph API app, the entry point to the client library is a `Microsoft.Graph.GraphService` object. You obtain this object by instantiating the `GraphService` class before accessing any other Microsoft Graph API resources.
 
```no-highlight 
Microsoft.Graph.GraphService client = new
    Microsoft.Graph.GraphService(
        serviceRoot, 
        async () => await AcquireTokenAsyncForUser()
); 
```
 
Here, `serviceRoot` is a `Uri` object and encapsulates the URL of `https://graph.microsoft.com/<version>/<tenantId>`. 
The `AcquireTokenAsyncForUser` function passed to the client constructor performs the initial request to acquire the access 
token for the app after prompting the user to sign in to Azure successfully. An implementation of this function call is as follows:
 
```no-highlight 
var redirectUri = new Uri("http://localhost/MsGraphNativeApp");
AuthenticationContext authenticationContext =  
         new AuthenticationContext(Constants.LoginUrl, false);
AuthenticationResult userAuthnResult = 
         authenticationContext.AcquireToken(
             Constants.ResourceUrl,
             Constants.ClientIdForUserAuthn, 
             redirectUri, 
             PromptBehavior.Always
         );
var TokenForUser = userAuthnResult.AccessToken;
```
 
1. First create a `AuthenticationContext` object and bind it to the `Constants.LoginUrl` 
(=`https://login.microsoftonline.com/common`), the base URL of the Azure user login portal. 

    > The `AuthenticationContext` class is exposed by the [ADAL for .NET](https://msdn.microsoft.com/en-us/library/azure/jj573266.aspx). It handles the authorization and token acquisition.

2. Then call the `AcquireToken` method on the newly created `authenticationContext` object. This will bring up the sign-in page for the user to enter their credentials. 

When the user signs in to successfully, the API proceeds to acquire the access token, returns it to the app in the `userAuthnResult` object, and uses it in the subsequent calls to the Microsoft Graph API service. 

The `redirectUri` must match the **REPLY URL** configured for the app in Azure  application registry. `Constants.ResourceUrl` is a named constant holding a string value of `"https://graph.microsoft.com"` and `Constants.ClientIdForUserAuthn` is the **CLIENT ID** value of the app, also configured in Azure. Unlike a web app, the client secret is not used for native app.
 
 
<!--<a name="msg_client_lib_object_model"> </a>  -->

###Map client library Object model to entity schema
The `Microsoft.Graph.GraphService` class serves as the root of the object hierarchy in the client library. This class encapsulates the ```<EntityContainer Name="GraphService">``` element in the $metadata declaration. 

The contained ```<EntitySet>``` elements become the like-named properties on the client object. For examples, the `<EntitySet Name="users" EntityType="Microsoft.Graph.User>` element of $metadata becomes the `GraphService.users` property in the client library to return a collection of the `Microsoft.Graph.User` objects, which also implement the `IUsersCollection` interface. 
 
The same applies to entities and their properties, including navigation properties. Thus, the `<EntityType name="User">` element and its child elements, for example, `<Property name="userPrincipalName">` and `<NavigationProperty name="files">`, 
in metadata become the `User` class, the `User.userPrincipalName` property and the `User.files` property, respectively, in Microsoft.Graph.dll.

<!-- <a name="msg_mapping"> </a>  -->

###Table mapping entity schemas ($metadata) and .NET client library
The following table summarizes the mappings between the Microsoft Graph API entity schemas ($metadata) and its .NET client library.


| **Entity of $metadata**	| **Type/members of Microsoft.Graph.Dll** |
|:--------------------------|:----------------------------------------|
|   `<EntityContainer Name="GraphService">` |	`GraphService client;` |
|   `<EntitySet Name="users" EntityType="Microsoft.Graph.User">` |	`IUserCollection client.users;` |
|   `<EntityType Name="User" BaseType="Microsoft.Graph.DirectoryObject">`	 | `Microsoft.Graph.User user;` |
|    `<Property Name="userPrincipalName" Type="Edm.String" Unicode="false" />` |	`string user.userPrincipalName;` |
|     `<NavigationProperty Name="files" Type="Collection(Microsoft.Graph.Item)" ContainsTarget="true" />`	| `IItemCollection user.files;` |

In addition, the `me` shortcut in the REST API is mapped to the `Me` property on the `client` object as illustrated as follows:

```
User me = client.Me;
```


<!--<a name="msg_access_and_manipulate_resources_with_client_library"> </a>  -->

###Access and manipulate resources with the client library 
With the client library, you can traverse the graph to access and manipulate the API resources by calling the  
`ExecuteAsync`, `UpdateAsync` and `DeleteAsync` and other methods.  For example, fetching the `users` collection 
off the tenant becomes calling the following statement: 
 
```no-highlight 
List<IUser> users = client.users.ExecuteAsync().Result.CurrentPage.ToList();
```
 
You can query a specific `User` resource from the tenant's `users` collection by calling the `GetById(uid)` method 
on the `users` collection (`client.users`):
 
    IUser user = client.users.GetById(uid).ExecuteAsync().Result;

 
 where `uid` is either the `User` entity's `objectId` or `userPrincipalName` property value. For any other type of entities, 
use the `objectId` property only to select a member from an entity collection on the server. Alternatively, you can use 
the `Where` clause to select a specific instance from a resource collection predicated upon the `objectId` (also, `userPrincipalName`
 for a `User` entity) properties. 
 
```no-highlight 
string upn = "johndoe@contoso.onmicrosoft.com";
IUser user = client.users.Where(u=>u.userPrincipalName==upn).ExecuteSingleAsync().Result;
```
 
This has the same effect as using the `GetById(upn)`.
 
Other properties may be used as predicates in a `Where` clause to filter out a subset of resources from a collection. 
The following statement fetches the CEO of a company from the Azure tenant:
 
```no-highlight 
IUser ceo = client.users.Where(u=>u.jobTitle=="CEO").ExecuteSingleAsync().Result;
```
 
And this one returns all the employees of the company other than the CEO:
 
```no-highlight 
List<IUser> employees = client.users.Where(u=>u.jobTitle!="CEO").ExecuteAsync().Result.CurrentPage.ToList();
```

 
The `Where` clause invoked before `ExecuteAsync` corresponds to using calling `$filter` query operation in the underlying REST call.
For this to work, the filtering capabilities must be enabled for the properties used in the predicate. You can check the `<annotations>` tag
in $metadata to find out if the option is supported for a given entity property. For more information about using `<annotations>` tag, 
see _Understanding Microsoft Graph API metadata_ article.
 
To navigate along a relationship from a given resource , follow the corresponding navigation property on the source entity. 
For example, the following snippet gets the list of files that a specific user (`user.objectId`) shared with the signed-in user. 
 
```no-highlight 
List<Item> userfiles= client.users.GetById(user.objectId).files.ExecuteAsync().Result.CurrentPage.ToList();
```
 
You can next get a specified file (`fid`) shared out by that user (`user.objectId`) as well as the resultant file's most recent editor:

 
```no-highlight 
IItem userFile= client.users.GetById(user.objectId)
    .files.GetById(fid)      // navigation from a set to a member by the member's objectId
    .ExecuteAsync().Result;
  
IUser userFileEditor = client.users.GetById(user.objectId)
    .files.GetById(fid)    // navigation from a set to a member by objectId
    .lastModifiedByUser    // traversal via relationship
    .ExecuteAsync().Result;

```
 
To get the files shared out by this editor (`userFileEditor`), start the traversal back from the tenant's user collection (`client.users`):
 
```no-highlight 
List<Item> userFileEditorfiles= client.users.
    GetById(userFileEditor.objectId)
    .files
    .ExecuteAsync().Result.CurrentPage.ToList();
```


<!--<a name="msg_query_options_with_client_library"> </a> -->

###Use query options with the client library
Common set operations are also supported for resource collections. For example, to fetch the first 5 users in a query, 
use `Take(5)`. This corresponds to setting the query parameter `$top=5` in the underlying REST API call.
 
```no-highlight 
List<IUser> users = client.users.Take(5).ExecuteAsync().Result.CurrentPage.ToList();
```

 
To filter a query predicated upon certain property values, use the `Where` clause:
 
```no-highlight 
List<IUser> users = client
    .users.Where(u=>u.jobTitle=="CEO")
    .ExecuteAsync().Result.CurrentPage.ToList();
```
 
Similarly, to project an entity's properties to a subset of the properties, use the `Select` clause on either the server-side or client-side. 
The server-side `Select` clause corresponds to setting the query parameter `$select=…`  in the underlying REST API call.  

When the `$select` option is not supported in a particular REST API call, you can use the client-side `Select` clause when using the client library. 
For example, to fetch a list of the users' `userPrincipalName` values:
 
```no-highlight 
List<string> users = client.users
    .ExecuteAsync().Result.CurrentPage
    .Select(u=>u.userPrincipalName).ToList();
```

However, the client-side filtering may not give you the performance you might get with the server-sider filtering.
 
When calling an unsupported server-side query option, you will get an exception with a descriptive error message. You can use
this to troubleshoot any programming issues. For example, when you try to invoke this statement 
 
```no-highlight 
List<IUser> users = client.users
    .Where(u=>u.userPrincipalName != "johndoe@contoso.onmicrosoft.com")
    .ExecuteAsync().Result.CurrentPage.ToList();
```

An exception will be thrown with an error message of `"One or more errors occurred"`. If you follow the inner exceptions, you will see
the following error message in JSON format:
 
```no-highlight 
{
    "odata.error": {
        "code":"Request_UnsupportedQuery",
        "message": { 
            "lang":"en",
            "value":"Unsupported property filter clause operator 'NotEqualsMatch'."
        }
    }
}
```

 
This is because the query option is not supported for selecting users other than the one of the specified `userPrincipalName`. 
 
In general, the client library offers a decent error information for you to troubleshoot any issues. Thus, if in doubt, 
always catch exceptions and inspect error messages to learn what query options are not supported for a given operation. 

You can see more calling the .NET client library in action in this [sample app](https://github.com/OfficeDev/O365-Win-Profile). 

<!-- ##Additional Resources##

- [Call Microsoft Graph API service via REST](call-microsoft-graph-api.md)
- [Hands on lab: Deep dive into the Office 365 unified API](http://dev.office.com/hands-on-labs/4585)  -->
