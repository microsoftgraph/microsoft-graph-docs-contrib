---
title: "Add custom data to resources using extensions"
description: "You can extend Microsoft Graph with your own application data. Add custom properties for storing custom data in Microsoft Graph resources without requiring an external data store."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.localizationpriority: high
ms.prod: "extensions"
ms.custom: graphiamtop20
ms.date: 04/14/2023
---

# Add custom data to resources using extensions

Microsoft Graph provides a single API endpoint to access rich people-centric data and insights through resources such as [user](/graph/api/resources/user) and [message](/graph/api/resources/message). You can also extend Microsoft Graph by adding custom properties to resource instances without requiring an external data store.

In this article, we'll discuss how Microsoft Graph supports extending its resources, the options available to add custom properties and when to use them.

> [!IMPORTANT]
> Do not use extensions to store sensitive personally identifiable information, such as account credentials, government identification numbers, cardholder data, financial account data, healthcare information, or sensitive background information.
>
> The extensions mentioned in this article are not similar to Azure AD [custom security attributes](/graph/api/resources/custom-security-attributes-overview). To understand their differences, see [How do custom security attributes compare with directory extensions?](/azure/active-directory/fundamentals/custom-security-attributes-overview#how-do-custom-security-attributes-compare-with-directory-extensions).

## Why add custom data to Microsoft Graph?

- As an ISV developer, you might decide to keep your app lightweight and store app-specific user profile data in Microsoft Graph by extending the **user** resource.
- Alternatively, you might want to retain your app's existing user profile store, and add an app-specific identifier to the **user** resource.
- As an enterprise developer, the in-house applications that you build might rely on your organization's HR-specific data. Integration within multiple applications can be simplified by storing this custom data in Microsoft Graph.

## Custom data options in Microsoft Graph

Microsoft Graph offers four types of extensions for adding custom data.

- Extension attributes
- Directory (Azure AD) extensions
- Schema extensions
- Open extensions

## Extension attributes

Azure AD offers a set of 15 extension attributes with predefined names on the [user](/graph/api/resources/onpremisesextensionattributes) and [device](/graph/api/resources/onpremisesextensionattributes) resources. These properties were initially custom attributes provided in on-premises Active Directory (AD) and Microsoft Exchange. However, they can now be used for more than syncing on-premises AD and Microsoft Exchange data to Azure AD through Microsoft Graph.

### Developer experience

You can use the 15 extension attributes to store String values on **user** or **device** resource instances, through the **onPremisesExtensionAttributes** and **extensionAttributes** properties respectively. The values may be assigned when creating a new resource instance or when updating an existing resource instance. You can also filter by the values.

#### Add or update data in extension attributes

The following example shows how to store data in **extensionAttribute1** and delete existing data from **extensionAttribute13** through an update operation with a PATCH method.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-extattributes1-15-update-user"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/users/071cc716-8147-4397-a5ba-b2105951cc0b

{
    "onPremisesExtensionAttributes": {
        "extensionAttribute1": "skypeId.adeleVance",
        "extensionAttribute13": null
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-extattributes1-15-update-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-extattributes1-15-update-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/extensibility-overview-extattributes1-15-update-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-extattributes1-15-update-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-extattributes1-15-update-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `204 No Content` response object.

#### Read the extension attributes

##### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-extattributes1-15-get"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$select=id,displayName,onPremisesExtensionAttributes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-extattributes1-15-get-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-extattributes1-15-get-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/extensibility-overview-extattributes1-15-get-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-extattributes1-15-get-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-extattributes1-15-get-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/extensibility-overview-extattributes1-15-get-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users(id,displayName,onPremisesExtensionAttributes)",
    "value": [
        {
            "id": "071cc716-8147-4397-a5ba-b2105951cc0b",
            "displayName": "Adele Vance",
            "onPremisesExtensionAttributes": {
                "extensionAttribute1": "Contractor",
                "extensionAttribute2": "50",
                "extensionAttribute3": null,
                "extensionAttribute4": "1478354",
                "extensionAttribute5": "10239390",
                "extensionAttribute6": null,
                "extensionAttribute7": null,
                "extensionAttribute8": null,
                "extensionAttribute9": null,
                "extensionAttribute10": "11",
                "extensionAttribute11": null,
                "extensionAttribute12": "/o=ExchangeLabs/ou=Exchange Administrative Group (FYDIBOHF47SPDLT)/cn=Recipients/cn=5ee781fc7egc7aa0b9394bddb44e7f04-Adele Vance",
                "extensionAttribute13": null,
                "extensionAttribute14": null,
                "extensionAttribute15": null
            }
        }
    ]
}
```

### Considerations for using extension attribute properties

The **onPremisesExtensionAttributes** object can be updated only for objects that aren't synced from on-premises AD.

The 15 extension attributes are already predefined in Microsoft Graph and their property names can't be changed. Therefore, you can't use custom names such as **SkypeId** for the extension attributes. This requires you and the organization to be aware of the extension attribute properties that are in use so that the values aren't inadvertently overwritten by other apps.

## Directory (Azure AD) extensions

[Directory extensions](/graph/api/resources/extensionProperty) provide developers with a strongly typed, discoverable and filterable extension experience for directory objects.

Directory extensions are first registered on an application through the [Create extensionProperty](/graph/api/application-post-extensionproperty) operation and must be explicitly targeted to specific and supported directory objects. After the application has been consented to by a user or an admin, the extension properties become immediately accessible in the tenant. All authorized applications in the tenant can read and write data on any extension properties defined on an instance of the target directory object.

For the list of resource types that can be specified as target objects for a directory extension, see [Choose an extension type for your application](#comparison-of-extension-types).

### Developer experience

Directory extension definitions are managed through the [extensionProperty](/graph/api/resources/extensionproperty) resource and its associated methods. The data is managed through the REST API requests that you use to manage the resource instance.

#### Define the directory extension

Before you can add a directory extension to a resource instance, you must first define the directory extension.

##### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-directoryextensions-create"
}-->
```http
POST https://graph.microsoft.com/v1.0/applications/30a5435a-1871-485c-8c7b-65f69e287e7b/extensionProperties

{
    "name": "jobGroupTracker",
    "dataType": "String",
    "targetObjects": [
        "User"
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-directoryextensions-create-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-directoryextensions-create-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/extensibility-overview-directoryextensions-create-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-directoryextensions-create-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-directoryextensions-create-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

A directory extension property named `extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker` is created with an extension name that follows the following naming convention: *extension_{appId-without-hyphens}_{extensionProperty-name}*.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applications('30a5435a-1871-485c-8c7b-65f69e287e7b')/extensionProperties/$entity",
    "id": "4e3dbc8f-ca32-41b4-825a-346215d7d20f",
    "deletedDateTime": null,
    "appDisplayName": "HR-sync-app",
    "dataType": "String",
    "isSyncedFromOnPremises": false,
    "name": "extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker",
    "targetObjects": [
        "User"
    ]
}
```

#### Add a directory extension property to a target object

After defining the directory extension, you can now add it to an instance of a target object type. You can store data in the directory extension when creating a new instance of the target object or when updating an existing object. The following example shows how to store data in the directory extension when creating a new **user** object.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-directoryextensions-add-users"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/users

{
    "accountEnabled": true,
    "displayName": "Adele Vance",
    "mailNickname": "AdeleV",
    "userPrincipalName": "AdeleV@contoso.com",
    "passwordProfile": {
        "forceChangePasswordNextSignIn": false,
        "password": "xWwvJ]6NMw+bWH-d"
    },
    "extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker": "JobGroupN"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-directoryextensions-add-users-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-directoryextensions-add-users-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-directoryextensions-add-users-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-directoryextensions-add-users-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `201 Created` response code and a [user](/graph/api/resources/user) object in the response body.

#### Retrieve a directory extension

The following example shows how the directory extensions and associated data are presented on a resource instance. The extension property will be returned by default through the `beta` endpoint, but only on `$select` through the `v1.0` endpoint.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-directoryextensions-get-users"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$select=id,displayName,extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker,extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-directoryextensions-get-users-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-directoryextensions-get-users-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/extensibility-overview-directoryextensions-get-users-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-directoryextensions-get-users-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-directoryextensions-get-users-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/extensibility-overview-directoryextensions-get-users-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users(id,displayName,extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker,extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable)",
    "value": [
        {
            "id": "63384f56-42d2-4aa7-b1d6-b10c78f143a2",
            "displayName": "Adele Vance",
            "extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker": "E4",
            "extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable": true
        }
    ]
}
```

#### Update or delete directory extensions

To update or delete the value of the directory extension for a resource instance, use the PATCH method. To delete the extension property and its associated value, set its value to `null`.

The following request updates the value of one directory extension and deletes another extension property.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-directoryextensions-update-users"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/users/63384f56-42d2-4aa7-b1d6-b10c78f143a2

{
    "extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable": null,
    "extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker": "E4"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-directoryextensions-update-users-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-directoryextensions-update-users-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-directoryextensions-update-users-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-directoryextensions-update-users-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `204 No Content` response code.

### Considerations for using directory extensions

If you accidentally delete a directory extension definition, any data that's stored in the associated property becomes undiscoverable. To resolve this, create a new directory extension definition on the same owner app and with exactly the same name as the deleted definition.

When a definition object is deleted before the corresponding extension property is updated to `null`, the property will still count against the 100-limit for the object.

When the definition is deleted before data in the associated extension property is deleted, there's no way to know the existence of the extension property via Microsoft Graph - even though the undiscoverable property counts against the 100-limit.

Deleting an owner app in the home tenant makes the associated directory extensions and their data undiscoverable. Restoring an owner app restores the directory extension definitions *but doesn't* make the directory extension properties or their data immediately discoverable. This is because restoring an app doesn't automatically restore the associated service principal in the tenant. To make the directory extension properties and their data discoverable, either create a new service principal or restore the deleted service principal. NO changes are made to other tenants where the app has been consented to.

<!-- Needs further testing; weird behavior.
If a multi-tenant application creates additional directory extensions in an app that has been consented to by other tenants, the associated directory extension properties become immediately available for use by the other tenants.
-->

## Schema extensions

[Microsoft Graph schema extensions](/graph/api/resources/schemaextension) are conceptually similar to directory extensions. First, you define your schema extension. Then, use it to extend supported resource instances with strongly typed custom properties. In addition, you can control the [status](/graph/api/resources/schemaextension#schema-extensions-lifecycle) of your schema extension and let it be discoverable by other apps.

For the list of resource types that support schema extensions, see [Choose an extension type for your application](#comparison-of-extension-types).

> [!VIDEO https://www.youtube-nocookie.com/embed/3MOAlUFNus0]

### Developer experience

When creating a schema extension definition, you must provide a unique name for its **id**. There are two naming options:

- If you already have a vanity `.com`,`.net`, `.gov`, `.edu` or a `.org` domain that you've verified with your tenant, you can use the domain name along with the schema name to define a unique name, in this format *{domainName}*_*{schemaName}*. For example, if your vanity domain is `contoso.com`, you can define an **id** of `contoso_mySchema`. This option is highly recommended.
- Alternatively, you can set the **id** to a schema name (without a domain name prefix). For example, `mySchema`. Microsoft Graph will assign a string ID for you based on the supplied name, in this format: `ext{8-random-alphanumeric-chars}_{schema-name}`. For example, `extkvbmkofy_mySchema`.

The **id** will be the name of the complex type that will store your data on the extended resource instance.

Once you register a schema extension, it's available to be used by all applications in the same tenant as the associated owner application (when in the `InDevelopment` state) or by all applications in any tenant (when in the `Available` state). Like directory extensions, authorized apps have the ability to read and write data on any extensions defined on the target object.

You manage the [schema extension definitions](/graph/api/resources/schemaextension) and the data in the corresponding schema extension property using separate sets of API operations. To manage the schema extension data on the extended resource instance, use the same REST request that you use to manage the resource instance.

- Use POST to store data in the schema extension property when you're creating a new user.
- Use PATCH to either store data in the schema extension property or update or delete the stored data.
    - To delete data from a property, set its value to `null`.
    - To delete data from *all* properties, set its value to `null`. If all properties are `null`, the schema extension object is also deleted.
    - To update any property, you must specify all properties in the request body. Otherwise, Microsoft Graph will update the unspecified properties to `null`.
- Use GET to read the schema extension properties for all users or individual users in the tenant.

#### Define a schema extension

##### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-schemaextensions-create"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/schemaExtensions

{
    "id": "graphLearnCourses",
    "description": "Graph Learn training courses extensions",
    "targetTypes": [
        "user"
    ],
    "properties": [
        {
            "name": "courseId",
            "type": "Integer"
        },
        {
            "name": "courseName",
            "type": "String"
        },
        {
            "name": "courseType",
            "type": "String"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-schemaextensions-create-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-schemaextensions-create-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/extensibility-overview-schemaextensions-create-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-schemaextensions-create-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-schemaextensions-create-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.schemaExtension"
} -->
```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#schemaExtensions/$entity",
    "id": "extkmpdyld2_graphLearnCourses",
    "description": "Graph Learn training courses extensions",
    "targetTypes": [
        "user"
    ],
    "status": "InDevelopment",
    "properties": [
        {
            "name": "courseId",
            "type": "Integer"
        },
        {
            "name": "courseName",
            "type": "String"
        },
        {
            "name": "courseType",
            "type": "String"
        }
    ]
}
```

#### Add a schema extension to a resource instance

After defining the schema extension, you can now add the extension property to an instance of a target object type. You can store data in the schema extension when creating a new instance of the target object or when updating an existing object. The following example shows how to store data in the schema extension property when creating a new user object.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-schemaextensions-add-users"
}-->
```http
POST https://graph.microsoft.com/beta/users

{
    "accountEnabled": true,
    "displayName": "Adele Vance",
    "mailNickname": "AdeleV",
    "userPrincipalName": "AdeleV@m365x72712789.onmicrosoft.com",
    "passwordProfile": {
        "forceChangePasswordNextSignIn": false,
        "password": "xWwvJ]6NMw+bWH-d"
    },
    "extkmpdyld2_graphLearnCourses": {
        "courseId": 100,
        "courseName": "Explore Microsoft Graph",
        "courseType": "Online"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-schemaextensions-add-users-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-schemaextensions-add-users-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-schemaextensions-add-users-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-schemaextensions-add-users-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `201 Created` response code and a [schemaExtension](/graph/api/resources/schemaextension) object in the response body

#### Update or delete a schema extension property

Use the PATCH operation to update a schema extension or delete an existing schema extension. To delete the extension property and its associated value from the resource instance, set its value to `null`.

The following example deletes the value of the **courseId** property and updates the **courseType** property. To delete the `extkmpdyld2_graphLearnCourses` extension property in its entirety, set its value to `null`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-schemaextensions-update-users"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/0668e673-908b-44ea-861d-0661297e1a3e

{
    "extkmpdyld2_graphLearnCourses": {
        "courseType": "Instructor-led",
        "courseId": null
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-schemaextensions-update-users-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-schemaextensions-update-users-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-schemaextensions-update-users-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-schemaextensions-update-users-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `204 No Content` response object.

#### Retrieve the schema extension property

To read the schema extension properties on a resource instance, specify the extension name in a `$select` request.

##### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-schemaextensions-get-user"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/0668e673-908b-44ea-861d-0661297e1a3e?$select=id,displayName,extkmpdyld2_graphLearnCourses
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-schemaextensions-get-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-schemaextensions-get-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/extensibility-overview-schemaextensions-get-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-schemaextensions-get-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-schemaextensions-get-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/extensibility-overview-schemaextensions-get-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(id,displayName,extkmpdyld2_graphLearnCourses)/$entity",
    "id": "63384f56-42d2-4aa7-b1d6-b10c78f143a2",
    "displayName": "Adele Vance",
    "extkmpdyld2_graphLearnCourses": {
        "@odata.type": "#microsoft.graph.ComplexExtensionValue",
        "courseType": "Instructor-led",
        "courseName": "Explore Microsoft Graph",
        "courseId": null
    }
}
```

### Considerations for using schema extensions

A schema extension must have an owner app. Ownership of the schema extension can't be reassigned to another app.

Deleting a schema extension definition without setting the schema extension to `null` makes the property and its associated user data undiscoverable.

Deleting an owner app in the home tenant doesn't delete the associated schema extension definition or the property and the data it stores. The schema extension property can still be read, deleted, or updated for users. However, the schema extension definition can't be updated.

<!--
To verify: Can you recover a schema extension definition by creating one with exactly the same structure (ID, name, properties) - Would only apply for schema extensions where the ID was in the format `{domainName}_{schemaName}`
-->

## Open extensions

[Microsoft Graph open extensions](/graph/api/resources/opentypeextension) are [open types](https://www.odata.org/getting-started/advanced-tutorial/#openType) that offer a simple and flexible way to add untyped data directly to a resource instance. These extensions aren't strongly typed, discoverable, or filterable.

For the list of resource types that support Microsoft Graph open extensions, see [Choose an extension type for your application](#comparison-of-extension-types).

> [!VIDEO https://www.youtube-nocookie.com/embed/ibdlADb8IZc]

### Developer experience

Open extensions, together with their data, are accessible through the **extensions** navigation property of the resource instance. They allow you to group related properties for easier access and management.

You define and manage open extensions on the fly on resource instances. They're considered unique for each object, and it's not required to apply a universally consistent pattern for all objects. For example, in the same tenant:

- The user object for Adele can have an open extension named *socialSettings* that has three properties: **linkedInProfile**, **skypeId**, and **xboxGamertag**.
- The user object for Bruno can have no open extension property.
- The user object for Alex can have an open extension named *socialSettings* with five properties: **theme**, **color**, **language**, **font**, and **fontSize**.

#### Create an open extension

The following example shows an open extension definition with three properties and how the custom properties and associated data are presented on a resource instance.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-openextensions-create-user"
}-->
```http
POST https://graph.microsoft.com/v1.0/users/3fbd929d-8c56-4462-851e-0eb9a7b3a2a5/extensions

{
    "@odata.type": "#microsoft.graph.openTypeExtension",
    "extensionName": "com.contoso.socialSettings",
    "skypeId": "skypeId.AdeleV",
    "linkedInProfile": "www.linkedin.com/in/testlinkedinprofile",
    "xboxGamerTag": "AwesomeAdele",
    "id": "com.contoso.socialSettings"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-openextensions-create-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-openextensions-create-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-openextensions-create-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-openextensions-create-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `201 Created` response code and an [openTypeExtension](/graph/api/resources/opentypeextension) object in the response body.

#### Update an existing open extension

To update an open extension, you must specify all its properties in the request body. Otherwise, the unspecified properties will be updated to `null` and deleted from the open extension.

The following request specifies only the **linkedInProfile** and **xboxGamerTag** properties. The value of the **xboxGamerTag** property is being updated while the **linkedInProfile** property remains the same. This request also deletes the unspecified **skypeId** property.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-openextensions-update-user"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/users/3fbd929d-8c56-4462-851e-0eb9a7b3a2a5/extensions/com.contoso.socialSettings

{
    "xboxGamerTag": "FierceAdele",
    "linkedInProfile": "www.linkedin.com/in/testlinkedinprofile"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-openextensions-update-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-openextensions-update-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-openextensions-update-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-openextensions-update-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

This request returns a `204 No Content` response code.


#### Retrieve the open extensions


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "extensibility-overview-openextensions-get-user"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/3fbd929d-8c56-4462-851e-0eb9a7b3a2a5/extensions/com.contoso.socialSettings

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('3fbd929d-8c56-4462-851e-0eb9a7b3a2a5')/extensions/$entity",
    "@odata.type": "#microsoft.graph.openTypeExtension",
    "xboxGamerTag": "FierceAdele",
    "linkedInProfile": "www.linkedin.com/in/testlinkedinprofile",
    "id": "com.contoso.socialSettings"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/extensibility-overview-openextensions-get-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/extensibility-overview-openextensions-get-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/extensibility-overview-openextensions-get-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extensibility-overview-openextensions-get-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/extensibility-overview-openextensions-get-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Considerations for using open extensions

Deleting a creator app doesn't affect the open extension and the data it stores.

## Comparison of extension types

The table below contrasts and compares the extension types, which should help you decide which option is most appropriate for your scenario.

| Capability | Extension attributes 1-15 | Directory extensions | Schema extensions | Open extensions |
|--|--|--|--|--|
| Supported resource types | [user][] <br/>[device][] | [user][] <br/> [group][] [administrativeUnit][] <br/> [application][] <br/>[device][] <br/> [organization][] | [user][] <br/> [group][] [administrativeUnit][] <br/> [contact][] <br/> [device][] <br/> [event][] (both user and group calendars) <br/> [message][] <br/> [organization][] <br/> [post][] | [user][] <br/> [group][] <!--<br/> [administrativeUnit][]--> <br/> [contact][] <br/> [device][] <br/> [event][]<sup>1</sup> (both user and group calendars) <br/> [message][] <br/> [organization][] <br/> [post][] <br/> [todoTask][] <br/> [todoTaskList][] |
| Strongly typed | No | Yes | Yes | No |
| Filterable | Yes | Yes | Yes | No |
| Managed via | Microsoft Graph <br/> Exchange admin center | Microsoft Graph | Microsoft Graph | Microsoft Graph |
| Sync data from on-premises to extensions using [AD connect][] | Yes, for users | [Yes][ADConnect-YES] | No | No |
| Create [dynamic membership rules][] using custom extension properties and data | [Yes][DynamicMembership-YES] | [Yes][DynamicMembership-YES] | No | No |
| Usable for customizing token claims | Yes | [Yes][DirectoryExt-CustomClaims] | No | No |
| Available in Azure AD B2C | Yes | [Yes][B2CDirectoryExt] | Yes | Yes |
| Limits | <li>15 predefined attributes per user or device resource instance | <li>100 extension values per resource instance | <li>Maximum of five definitions per owner app <br/><li> 100 extension values per resource instance (directory objects only) | <li>Two open extensions per creator app per resource instance<sup>2</sup> <br/><li> Max. of 2 Kb per open extension<sup>2</sup><li> For Outlook resources, each open extension is stored in a [MAPI named property][MAPI-named-property]<sup>3</sup> |

> [!NOTE]
> 
> <sup>1</sup> Due to an existing service limitation, delegates cannot create open extension-appended events in shared mailbox calendars. Attempts to do so will result in an `ErrorAccessDenied` response.
>
> <sup>2</sup> These limits on open extensions apply to the following directory resources: **user**, **group**, **device**, <!--**administrativeUnit**,--> and **organization**.
>
> <sup>3</sup> Each [open extension](/graph/api/resources/opentypeextension) is stored in a [MAPI named property](/office/client-developer/outlook/mapi/mapi-named-properties), which are a limited resource in a user's mailbox. This limit applies to the following Outlook resources: **message**, **event**, and **contact**
>
> You can manage all extensions when you're signed in with a work or school account. Additionally, you can manage open extensions for the following resources when signed-in with a personal Microsoft account: **event**, **post**, **group**, **message**, **contact**, and **user**.

## Permissions and privileges

The same privileges that your app requires to read from or write to a resource instance are also required to manage any extensions data on that resource instance. For example, for an app to update any user's profile with custom app data, the app must have been granted the *User.ReadWrite.All* Microsoft Graph permission.

## Known limitations

For known limitations using extensions, see the [extensions section](known-issues.md#extensions) in the known issues article.

## Next steps

- [Training module: Add custom data to your app using extensions in Microsoft Graph](/training/modules/msgraph-extensions/)
- [Add custom data to users using open extensions](extensibility-open-users.md)
- [Add custom data to groups using schema extensions](extensibility-schema-groups.md)

<!-- Links -->

[user]: /graph/api/resources/user
[group]: /graph/api/resources/group
[contact]: /graph/api/resources/contact
[administrativeUnit]: /graph/api/resources/administrativeunit
[application]: /graph/api/resources/application
[device]: /graph/api/resources/device
[event]: /graph/api/resources/event
[message]: /graph/api/resources/message
[organization]: /graph/api/resources/organization
[post]: /graph/api/resources/post
[todoTask]: /graph/api/resources/todotask
[todoTaskList]: /graph/api/resources/todotasklist
[servicePrincipal]: /graph/api/resources/serviceprincipal
[AD connect]: /azure/active-directory/hybrid/whatis-hybrid-identity?context=/azure/active-directory/enterprise-users/context/ugr-context
[ADConnect-YES]: /azure/active-directory/hybrid/how-to-connect-sync-feature-directory-extensions
[dynamic membership rules]: /azure/active-directory/enterprise-users/groups-dynamic-membership
[DynamicMembership-YES]: /azure/active-directory/enterprise-users/groups-dynamic-membership#extension-properties-and-custom-extension-properties
[DirectoryExt-CustomClaims]: /azure/active-directory/develop/active-directory-optional-claims#configuring-directory-extension-optional-claims
[B2CDirectoryExt]: /azure/active-directory-b2c/user-profile-attributes#extension-attributes
[MAPI-named-property]: /office/client-developer/outlook/mapi/mapi-named-properties
