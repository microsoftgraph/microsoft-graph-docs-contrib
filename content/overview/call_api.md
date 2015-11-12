# Calling Microsoft Graph API

###Call Microsoft Graph API service via REST
To access and manipulate a Microsoft Graph API resource, you call and specify the resource URLs using one of the following operations permitted on the resource.   

- GET
- POST
- PATCH
- PUT
- DELETE 

All Microsoft Graph API requests use the following root URL:

```
	https://graph.microsoft.com/{version}/{tenant}
```

In this URL:

- `https://graph.microsoft.com` is the Microsoft Graph API endpoint
- `{version}` is the target service version, for example, `v1.0` or `beta`.
- `{tenant}` is the Office 365 tenant specified in one of the following ways:
  - The tenant ID (GUID)
  - A domain name for the tenant, for example, contoso.onmicrosoft.com
  - The alias `me`, which resolves to the tenant of the signed-in user
  - The alias `myOrganization`, which resolves to the tenant of the organization signed-in user

For example, if your tenant domain is `https://contoso.onmicrosoft.com`, and you are targeting the beta 
version of the service, you can send requests to `https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com`.

###Microsoft Graph API metadata
The service document ($metadata) is published at the service root. For example, you can view the service document for the v1.0 and beta versions via the following URLs.

Microsoft Graph API `v1.0` metadata.
```
	https://graph.microsoft.com/v1.0/$metadata
```
Microsoft Graph API `beta metadata.
```
	https://graph.microsoft.com/beta/$metadata
```

The metadata allows you to see entities, entity types and sets, and enums of the Microsoft Graph REST API. Using the metadata and readily available third-party tools, you can create serialized objects and generate client libraries for simplified 
use of the REST API.  

A resource URL is determined by the Microsoft Graph API entity data model. The prescription is outlined in the entity metadata schema ($metadata). 

The path URL resource names and query parameters are case insensitive. However, values you assign, entity IDs, and 
other base64 encoded values are case sensitive.

A few basic programming patterns calls to the API are shown in the following section.

###Navigation from a set to a member

To view the information about a user, you get the `User` entity from the `users` collection on the tenant. To do so, you can
navigate from the tenant to users and then to the specific user identified by its identifier, using an HTTPS GET request. For a `User` entity, either the `objectId` or `userPrincipalName` property may be used as the identifier. The following example request uses the `userPrincipalName` value as the user's Id. 

```no-highlight 
GET https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/users/john.doe@contoso.onmicrosoft.com HTTP/1.1
Authorization : Bearer <access_token>
```

If successful, you should get a 200 OK response containing the user resource representation in the payload, as shown as follows:

```no-highlight 
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false;charset=utf-8
server: Microsoft-IIS/8.5
content-length: 982

{
    "@odata.context": "https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/$metadata#users/$entity",
    "objectType": "User",
    "objectId": "c95e3b3a-c33b-48da-a6e9-eb101e8a4205",
    "city": "Redmond",
    "country": "USA",
    "department": "Help Center",
    "dirSyncEnabled": null,
    "displayName": "John Doe",
    "givenName": "John",
    "userPrincipalName": "Johndoe@contoso.onmicrosoft.com",

    ... 
}
```


###Projection from an entity to properties
To retrieve only the user's biographical data, such as the user's provided _About me_ description and their skill set, you can add the $select query option to the previous request. For example,

```no-highlight 
GET https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/users/john.doe@contoso.onmicrosoft.com?$select=AboutMe,Skills HTTP/1.1
Authorization : Bearer <access_token>
```

The successful response returns the 200 OK status and a payload of the following format:

```no-highlight 
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false;charset=utf-8
odata-version: 4.0
content-length: 169

{
    "@odata.context": "https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/$metadata#users/$entity",
    "AboutMe": "A cool and nice guy.",
    "Skills": [
        "n-Lingual",
        "private speaking",
        "doodling"
    ]
}
```

Here, instead of the entire property sets on the `User` entity, only the `AboutMe` and `Skills` properties, are returned.

###Traversal to another resource via relationship
A manager holds a `directReports` relatioinship with  the other users reporting to him or her. To query the list of the direct reports of a user, you can use the following HTTPS GET request to navigate to the intended target via relationship traversal. 

```no-highlight 
GET https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/users/john.doe@contoso.onmicrosoft.com/directReports HTTP/1.1
Authorization : Bearer <access_token>
```

The successful response returns the 200 OK status and a payload of the following format:

```no-highlight 
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false;charset=utf-8
odata-version: 4.0
content-length: 152
    
{
    "@odata.context": "https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/$metadata#users('johndoe%40contoso.onmicrosoft.com')/directReports",
    "value": []
}
```

In this case, the user is not a manager or team lead and has no direct reports.


Similarly, you can follow a relationship to navigate to related resources provisioned from another service. For example, the `User => Messages` relationship enables graph traversal from an Azure AD node to an Exchange Online node. The below example show how to do this in a REST API call:


```no-highlight 
GET https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/users/messages HTTP/1.1
Authorization : Bearer <access_token>
```

    
The successful response returns the 200 OK status and a payload of the following format:


```no-highlight 
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false;charset=utf-8
odata-version: 4.0
content-length: 147
    
{
    "@odata.context": "https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/$metadata#users('johndoe%40contoso.onmicrosoft.com')/messages",
    "value": []
}
```

###Projection from entities to properties
In addition to projection from a single entity to its properties, you can also apply the similar `$select` query option to an entity collection to project them to a collection of some of their properties. For example, to query the name and type of the signed-in user's files, you can submit the following HTTPS GET request:

```no-highlight 
GET https://graph.microsoft.com/v1.0/me/files?$select=name,type HTTP/1.1
Authorization : Bearer <access_token>
```

The successful response returns a 200 OK status code and a payload containing the names and types of the shared files, as shown in the following example:

```no-highlight 
    {
      "@odata.context": "https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/$metadata#users('johndoe@contoso.onmicrosoft.com')/files",
      "value": [
        {
          "@odata.id": "users/johndoe@contoso.onmicrosoft.com/files/01EKT655BZNCMKTXXVPREY7G2HYHLWC7R3",
          "id": "01EKT655BZNCMKTXXVPREY7G2HYHLWC7R3",
          "name": "Shared with Everyone",
          "type": "Folder",
          "#Microsoft.Graph.copy": {
            "title": "Microsoft.Graph.copy",
            "target": "https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/users/johndoe@contoso.onmicrosoft.com/files/01EKT655BZNCMKTXXVPREY7G2HYHLWC7R3/Microsoft.Graph.Item/Microsoft.Graph.copy"
          },
          "#Microsoft.Graph.content": {
            "title": "Microsoft.Graph.content",
            "target": "https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/users/johndoe@contoso.onmicrosoft.com/files/01EKT655BZNCMKTXXVPREY7G2HYHLWC7R3/Microsoft.Graph.Item/Microsoft.Graph.content"
          }
        }
      ]
    }
```

From the root folder, the _Shared with Everyone_ folder is shared by default. 
Users can add and share other files or folders. In this example, the user has not shared any other folders.

<!--_ <a name="msg_filter_query_option"> </a> -->

###Query a subset of users with the filtering query option
To find the employees of a specific job title within an organization, you can navigate from the organization's tenant to the users collection and then specify a $filter query option. An example is shown as follows:

    
```no-highlight 
GET https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/users/?$filter=jobTitle+eq+%27Helper%27 HTTP/1.1
Authorization : Bearer <access_token>
```

The successful response returns the 200 OK status code and a list of users with the specified job title (`'Helper'`), as shown in the following example:

```no-highlight 
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false;charset=utf-8
odata-version: 4.0
content-length: 986

{
    "@odata.context": "https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/$metadata#users",
    "value": [
        {
            "objectType": "User",
            "objectId": "c95e3b3a-c33b-48da-a6e9-eb101e8a4205",
            "city": "Redmond",
            "country": "USA",
            "department": "Help Center",
            "dirSyncEnabled": null,
            "displayName": "Helping hand",
            "facsimileTelephoneNumber": null,
            "givenName": "help",
            "immutableId": null,
            "jobTitle": "Helper",
            ......
            "mailNickname": "help",
            "mobile": null,
            "onPremisesSecurityIdentifier": null,
            "otherMails": [
                "janedoe@contoso.onmicrosoft.com"
            ],
            ......
            "surname": "hand",
            "usageLocation": "US",
            "userPrincipalName": "help@contoso.onmicrosoft.com",
            "userType": "Member"
        }
    ]
}
```

It appears that the returned user has a unique job title in her organization. 


###Calling OData actions or functions
The Microsoft Graph API also supports OData actions and functions to manipulate the resources. 
For example, the following HTTPS POST request lets the signed-in user (`me`) copy a file ("test3.txt") from a folder (`"<id_1>"`) to another folder (`"<id_2>"`). 

```no-highlight 
POST https://graph.microsoft.com/v1.0/me/files/<id_1>/Copy HTTP/1.1
authorization: bearer <access_token>
content-type: application/json
content-length: 96

{
    "destFolderId" : "<id_2>",
    "newName" : "test3.txt"
}
```

The request payload contains the input to the `Microsoft.Graph.Copy` action, which is also defined in the $metadata.

With a single unified endpoint, the Microsoft Graph API simplifies the application programming interface for all the Office 365 services as well and the Azure AD service. As a result, the boundaries of the otherwise silo-ed services disappear. As an app developer, you are no longer required to keep track of the data sources and to implement custom interfaces between various data sources. 


