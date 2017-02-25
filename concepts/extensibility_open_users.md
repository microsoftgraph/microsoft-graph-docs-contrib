# Add custom data to Users using Open Extensions (preview)
We're going to walk you through an example to demonstrate how to use *open extensions*. 

Imagine you're building an application that is available on lots of different client platforms, such as on a desktop and mobile.  However, you want to let users configure their UI experience so it’s consistent no matter which device they use to sign in to your app. This is a pretty common problem for many apps. 

For this scenario we're going to show you how to:

1. Add an open extension, representing some roaming profile information about the user.
2. Query that user and this time also get back the roaming profile.
3. Change the roaming profile information (the open extension value).
4. Delete an open extension value.

>NOTE: This topic shows you how to add, read, update and delete open extensions on a *user* resource.  These methods are also supported for the *device, event, group, message* and *post* resource types.  Simply update the example requests below using any of those resource types. The responses shown in the examples below may be truncated for brevity. 

## 1. Add roaming profile information
Now imagine that the user signs in to the app and configures the look and feel of the app.  These app settings should roam so that the user gets the same experience whatever device they sign into the app from.  Here we'll see how to add the roaming profile information to a user resource.

##### Request
```http
POST https://graph.microsoft.com/beta/me/extensions
Content-type: application/json
{
    "@odata.type":"microsoft.graph.openTypeExtension",
    "extensionName":"com.contoso.roamingSettings",
    "theme":"dark",
    "color":"purple",
    "lang":"Japanese"
}
```
##### Response
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-length: 420

{
    "@odata.type": "#microsoft.graph.openTypeExtension",
    "extensionName": "com.contoso.roamingSettings",
    "id": "com.contoso.roamingSettings",
    "theme": "dark",
    "color": "purple",
    "lang": "Japanese"
}
```

## 2. Retrieve roaming profile information
When the user signs in to the app from another device, the app can retrieve the signed-in user profile details as well as the roaming settings. This can be done by getting the user's resource and expanding the extension navigation property.

##### Request
```http
GET https://graph.microsoft.com/beta/me?$select=id,displayName,mail,mobilePhone&$expand=extensions
```
##### Response
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-length: 420

{
    "id": "84b80893-8749-40a3-97b7-68513b600544",
    "displayName": "John Smith",
    "mail": "john@contoso.com",
    "mobilePhone": "1-555-6589",
    "extensions": [
        {
            "@odata.type": "#microsoft.graph.openTypeExtension",
            "extensionName": "com.contoso.roamingSettings",
            "id": "com.contoso.roamingSettings",
            "theme": "dark",
            "color": "purple",
            "lang": "Japanese"
        }
    ]
}
```
> NOTE: If you have multiple extensions, you can filter on the *id* to get the extension that you are interested in.

## 3. Change roaming profile information
A user may choose to change their roaming profile information.  This update can be achieved with a ```PATCH``` on the open extension value. 

##### Request
```http
PATCH https://graph.microsoft.com/beta/me/extensions/com.contoso.roamingSettings
Content-type: application/json
{
    "theme":"light",
    "color":"yellow",
    "lang":"Swahili"
}
```

##### Response
```
HTTP/1.1 204 No content
```

## 4. Delete a user's roaming profile
A user decides that they don't want a roaming profile any more, so they delete it.

##### Request
```http
DELETE https://graph.microsoft.com/beta/me/extensions/com.contoso.roamingSettings
```

##### Response
```
HTTP/1.1 204 No content
```
