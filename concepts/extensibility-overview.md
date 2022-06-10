---
title: "Add custom data to resources using extensions"
description: "Microsoft Graph provides a single API endpoint that gives you access to rich people-centric data and insights through a number of resources such as user and message. You can also extend Microsoft Graph with your own application data. You can add custom properties to Microsoft Graph resources without requiring an external data store."
author: "dkershaw10"
ms.localizationpriority: high
ms.custom: graphiamtop20
---

# Add custom data to resources using extensions

Microsoft Graph provides a single API endpoint to access rich people-centric data and insights through resources such as [user](/graph/api/resources/user) and [message](/graph/api/resources/message). You can also extend Microsoft Graph with your own application data by adding custom properties to store data in Microsoft Graph resources without requiring an external data store.

In this article, we'll discuss how Microsoft Graph supports adding data to its resources, the options available to add custom data and when to use them.

> [!IMPORTANT]
> Do not use extensions to store sensitive personally identifiable information, such as account credentials, government identification numbers, cardholder data, financial account data, healthcare information, or sensitive background information.

## Why add custom data to Microsoft Graph?

* As an ISV developer, you might decide to keep your app lightweight and store app-specific user profile data in Microsoft Graph by extending the **user** resource.
* Alternatively, you might want to retain your app’s existing user profile store, and add an app-specific identifier to the **user** resource.
* As an enterprise developer, the in-house applications that you build might rely on your organization's custom HR data. Integration within multiple applications can be simplified by storing this custom data in Microsoft Graph.

## Custom data options in Microsoft Graph

Microsoft Graph offers four types of extensions for adding custom data.

1. Extension attributes properties
2. Directory (Azure AD) extensions
3. Microsoft Graph schema extensions
4. Microsoft Graph open extensions

### 1. Extension attributes properties

Azure AD offers a set of 15 custom properties on the [user](/graph/api/resources/onpremisesextensionattributes) and [device](/graph/api/resources/onpremisesextensionattributes) resources. These properties were initially custom attributes provided in on-premises Active Directory (AD) and Microsoft Exchange but they can now be used for more than syncing on-premises AD and Microsoft Exchange data to Azure AD through Microsoft Graph.

You can use the extension attributes 1-15 to store up to 15 custom data string values on a **user** or **device** resource instance, through the **onPremisesExtensionAttributes** and **extensionAttributes** properties respectively. The values may be assigned using a POST operation to create an instance of the resource, or updated with a PATCH operation to the resource instance. They can also be filtered.

#### Developer experience

The following examples show how the custom data is presented on a resource instance.

##### Example: Extension attributes on a user object

```http
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
```

##### Example: Extension attributes on a device object

```http
"extensionAttributes": {
    "extensionAttribute1": null,
    "extensionAttribute2": null,
    "extensionAttribute3": null,
    "extensionAttribute4": null,
    "extensionAttribute5": null,
    "extensionAttribute6": null,
    "extensionAttribute7": null,
    "extensionAttribute8": null,
    "extensionAttribute9": null,
    "extensionAttribute10": null,
    "extensionAttribute11": null,
    "extensionAttribute12": null,
    "extensionAttribute13": null,
    "extensionAttribute14": null,
    "extensionAttribute15": null
}
```

### 2. Directory (Azure AD) extensions

[Directory extensions](/graph/api/resources/extensionProperty) provide developers with a strongly typed, discoverable and filterable extension experience for directory objects.

Directory extensions are first registered on an application through the [Create extensionProperty](/graph/api/application-post-extensionproperty) operation and must be explicitly targeted to specific directory objects. After the application has been consented to by a user or an admin, the extension properties become immediately accessible in the tenant. All authorized applications in the tenant can read and write custom data on any extension properties defined on an instance of the target directory object.

For the list of resource types that can be specified as target objects for a directory extension, see [Choose an extension type for your application](#choose-an-extension-type-for-your-application).

#### Developer experience

Directory extensions are managed through the [extensionProperty](/graph/api/resources/extensionproperty) resource and its associated methods. The custom data are managed through the same REST requests that you use to manage the resource instance.

The following example shows a directory extension definition

```http
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applications('30a5435a-1871-485c-8c7b-65f69e287e7b')/extensionProperties/$entity",
    "id": "4e3dbc8f-ca32-41b4-825a-346215d7d20f",
    "deletedDateTime": null,
    "appDisplayName": "jobStatTracker",
    "dataType": "String",
    "isSyncedFromOnPremises": false,
    "name": "extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroup",
    "targetObjects": [
        "User"
    ]
}
```

The following example shows how the custom data is presented on a resource instance.

```http
{
    "extension_25883231668a43a780b25685c3f874bc_jobGroup": "JobGroupK",
    "extension_25883231668a43a780b25685c3f874bc_shareReviewsPrivately": "Yes",
}
```

### 3. Microsoft Graph schema extensions

[Microsoft Graph schema extensions](/graph/api/resources/schemaextension) are conceptually similar to directory extensions. First, you create your schema extension definition. Then, use it to extend supported resource instances with strongly typed custom data. In addition, you can control the [status](/graph/api/resources/schemaextension#schema-extensions-lifecycle) of your schema extension and let it be discoverable by other apps.

For the list of resource types that can be specified as target objects for a Microsoft Graph schema extension, see [Choose an extension type for your application](#choose-an-extension-type-for-your-application).

> [!VIDEO https://www.youtube-nocookie.com/embed/3MOAlUFNus0]

#### Developer experience

When creating a schema extension definition, you must provide a unique name for its **id**. There are two naming options:

- If you already have a vanity `.com`,`.net`, `.gov`, `.edu` or a `.org` domain that you've verified with your tenant, you can use the domain name along with the schema name to define a unique name, in this format *{domainName}*_*{schemaName}*. For example, if your vanity domain is `contoso.com`, you can define an **id** of `contoso_mySchema`. This is the preferred option.
- If you don’t have a verified vanity domain, you can set the **id** to a schema name (without a domain name prefix). For example, `mySchema`. Microsoft Graph will assign a string ID for you based on the supplied name, in this format: `ext{8-random-alphanumeric-chars}_{schema-name}`.  For example, `extkvbmkofy_mySchema`.

The **id** will be the name of the complex type that will store your custom data on the extended resource instance.

Once a schema extension is registered, it's available to be used by all applications in the same tenant as the associated owner application (when in the `InDevelopment` state) or by all applications in any tenant (when in the `Available` state). Like directory extensions, authorized apps have the ability to read and write custom data on any extensions defined on the target object.

Unlike open extensions, you manage the [schema extension definitions](/graph/api/resources/schemaextension) and their data on the extended resource instance as separate sets of API operations. Because schema extensions are accessible as complex types in instances of the targeted resources, you can do CRUD operations on the custom data in a schema extension in the following ways:

- Use the resource `POST` method to specify custom data when creating a new resource instance. There is a [known issue](known-issues.md#unable-to-create-a-resource-instance-and-add-schema-extension-data-at-the-same-time) on the **contact**, **event**, **message**, and **post** resources that require creating a schema extension using a `PATCH` operation.
- Use the resource `GET` method with a `$select` query parameter to read the custom data.
- Use the resource `PATCH` method to add or update custom data in an existing resource instance.
- Use the resource `PATCH` method to set the complex type to `null`, which deletes the custom data in the resource instance.

The following example shows a schema extension definition.

```http
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#schemaExtensions/$entity",
    "id": "graphlearn_courses",
    "description": "Graph Learn training courses extensions",
    "targetTypes": [
        "device"
    ],
    "status": "InDevelopment",
    "owner": "da2d15ee-30c0-4732-8f5d-84158b8cb8aa",
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

The following example shows how the custom data is presented on a resource instance. You read the custom data on a resource instance only by specifying the extension name in a $select request. For example, `../users?$select=graphlearn_courses`.

```http
{
	"graphlearn_courses": {
	    "courseId":"123",
	    "courseName":"New Managers",
	    "courseType":"Online"
    }
}
```

For more information about how to use schema extensions to add custom data, see [schemaExtension resource type](/graph/api/resources/schemextension) and [Add custom data to groups using schema extensions](extensibility-schema-groups.md).

### 4. Microsoft Graph open extensions

[Microsoft Graph open extensions](/graph/api/resources/opentypeextension) are [open types](https://www.odata.org/getting-started/advanced-tutorial/#openType) that offer a simple and flexible way to add untyped data directly to a resource instance. These extensions aren't strongly typed or discoverable.

For the list of resource types that support Microsoft Graph open extensions, see [Choose an extension type for your application](#choose-an-extension-type-for-your-application).

> [!VIDEO https://www.youtube-nocookie.com/embed/ibdlADb8IZc]

#### Developer experience

Open extensions, together with their custom data, are accessible through the **extensions** navigation property of the resource instance.

The **extensionName** property is the only *pre-defined*, writable property in an open extension. When creating an open extension, you must assign the **extensionName** property a name that is unique within the tenant. One way to do this is to use a reverse domain name system (DNS) format that is dependent on *your own domain*, for example, `Com.Contoso.ContactInfo`. **Do not use the Microsoft domain (`Com.Microsoft` or `Com.OnMicrosoft`) in an extension name**.

The following example shows an open type definition and how the custom data is presented on a resource instance.

```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('3fbd929d-8c56-4462-851e-0eb9a7b3a2a5')/extensions",
    "value": [
        {
            "@odata.type": "#microsoft.graph.openTypeExtension",
            "extensionName": "com.contoso.roamingSettings",
            "theme": "dark",
            "color": "purple",
            "lang": "Japanese",
            "id": "com.contoso.roamingSettings"
        }
    ]
}
```

For more information about how to use open extensions to add custom data, see [openTypeExtension resource type](/graph/api/resources/opentypeextension) and [Add custom data to users using open extensions](extensibility-open-users.md).

## Choose an extension type for your application

The table below contrasts and compares each options capabilities, which should help you decide which option is most appropriate for your scenario.

| Capability | Directory extensions | Schema extensions | Open extensions | Extension attributes 1-15 |
|:-|:-|:-|:-|:-|
| Supported resource types | [user][] <br/> [group][] <br/> [administrativeUnit][] <br/> [application][] <br/> [device][] <br/> [organization][] <br/> [servicePrincipal][] | [user][] <br/> [group][] <br/> [administrativeUnit][] <br/> [contact][] <br/> [device][] <br/> [event][]* (for both user and group calendars) <br/> [message][] <br/> [organization][] <br/> [post][] <br/> [todoTask][] <br/> [todoTaskList][]) | [user][] <br/> [group][] <br/> [administrativeUnit][] <br/> [contact][] <br/> [device][] <br/> [event][] <br/> [message][] <br/> [organization][] <br/> [post][] | [user][] <br/>[device][] |
| Strongly typed | Yes | Yes | No | No |
| Filterable | Yes | Yes | Yes | Yes |
| Managed via | Microsoft Graph | Microsoft Graph | Microsoft Graph | Microsoft Graph <br/> Exchange admin center |
| Sync custom data from on-premises using [AD connect][] | [Yes][ADConnect-YES] | No | No | Yes for Users |
| Create [dynamic membership rules][] using custom data in extensions | [Yes][DynamicMembership-YES] | No | No | [Yes][DynamicMembership-YES] |
| Usable for customizing token claims | [Yes][DirectoryExt-CustomClaims] | No | No | Yes |
| Available in Azure AD B2C | [Yes][B2CDirectoryExt] | Yes | Yes | Yes |
| Limits | 100 extension values across *all* types and *all* applications per resource instance | Maximum of 5 definitions per owner app | - | 15 predefined attributes per user or device resource instance |

> **Note:** \* Due to an existing service limitation, delegates cannot create open extension-appended events in shared mailbox calendars. Attempts to do so will result in an `ErrorAccessDenied` response.

> [!TIP]
> You can manage all extensions when you're signed in with a work or school account. Additionally, you can manage extensions for the following resources when signed-in with a personal Microsoft account: **event**, **post**, **group**, **message**, **contact**, and **user**.

## Permissions

The same [permissions](./permissions-reference.md) that are required to read from or write to a specific resource are also required to read from or write to any extensions data on that resource. For example, for an app to update the signed-in user's profile with custom app data, the app must have been granted the *User.ReadWrite.All* permission.

## Data limits

### Open extension limits

The following limits apply to directory resources (**user**, **group**, **device**, **administrativeUnit**, **organization**):

- Each open extension can have up to 2 KB of data (including the extension definition itself).
- An application can add up to two open extensions per resource instance.

The following limits apply to Outlook resources (such as **message**, **event**, and **contact**):

- Each open extension is stored in a [MAPI named property](/office/client-developer/outlook/mapi/mapi-named-properties), which are a limited resource in a user's mailbox. For more information, see [openTypeExtension resource type](/graph/api/resources/opentypeextension).

### Schema extension limits

An application may create no more than **five** schema extension definitions.

## Known limitations

For known limitations using extensions, see the [extensions section](known-issues.md#extensions) in the known issues article.

## See also

- [Add custom data to users using open extensions](extensibility-open-users.md)
- [Add custom data to groups using schema extensions](extensibility-schema-groups.md)
- [Microsoft 365 domains](/office365/servicedescriptions/office-365-platform-service-description/domains)
- [Adding and verifying a domain for a Microsoft 365 tenant](https://office365support.ca/adding-and-verifying-a-domain-for-the-new-office-365/)


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