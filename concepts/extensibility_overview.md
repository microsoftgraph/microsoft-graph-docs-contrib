# Adding custom data to Microsoft Graph (preview)

Microsoft Graph provides a single API endpoint that gives you access to rich people-centric data and insights. While we’re constantly growing these data sets by adding new Microsoft cloud services, there's now a way for you to **extend** the Graph with your own custom application data. You can add custom properties to Graph resources without requiring an external data store. For example, you might decide to keep your app lightweight and store app specific user profile data in Microsoft Graph by extending the user object. Alternatively, you might want to retain your own app’s user profile store, and join this to users in the Graph by adding your app’s unique identifier to user object.  

Microsoft Graph offers 2 types of extensions. Choose the extension type that best suits your application needs:

*  **Open extensions**: A good way for developers to get started with extending resources with custom data.
*  **Schema extensions**: A more versatile mechanism for developers who care about storing typed data, making their schema discoverable and shareable, being able to filter, and in the future being able to perform input data validation and authorization.

> NOTE: You should not use this feature to store sensitive personally identifiable information, such as account credentials, government identification numbers, cardholder data, financial account data, healthcare information, or sensitive background information.

## Open extensions
Open extensions gives you an easy way to directly add untyped properties to a resource in the Microsoft Graph. Any open extension added to a resource shows up in the **extensions** navigation property, which is derived from the [extension](../api-reference/beta/resources/extension.md) abstract type.  Each extension has an additional **extensionName** property which is the only pre-defined, writable property for all extensions, along with your custom date. One way to help make sure extension names are unique is to use a reverse domain name system (DNS) method that is dependent on _your own domain_, for example, `Com.Contoso.Contact`. Do not use the Microsoft domain in an extension name.

Open extension example: [Add custom data to Users using Open Extensions (preview)](extensibility_open_users.md)

## Schema extensions
With schema extensions you get to define the schema that you want to extend a resource class with (also known as entity-types). This allows you to extend targeted resource types with new strongly-typed properties. This schema definition must be given a unique name, based on one of your directory's verified domain names along with your extension name, for example `contoso_mySchema`.  Once created, the schema definition is available for use on the targeted resource type.  When you add custom data to a resource, it shows up as a complex type with the unique name of the schema definition it's created from. Even better, your schema, is also discoverable for other app developers to find and use, and build further experiences on top. During preview, all schemas in the "Available" state are discoverable by other app developer and may be used to extend resources with custom data as defined by the available schema extension.

Schema extension example: [Add custom data to Groups using Schema Extensions (preview)](extensibility_schema_groups.md)

### Schema extensions lifecycle
When you create a schema extension definition, the app used (for creation) is marked as the owner of the schema extension. Only this app can update and delete the schema extension definition. The schema extension may be updated with non-breaking changes. The schema extension can be in various different lifecycle states. You can change the lifecycle state through a PATCH operation.

| State | Lifecycle state behavior |
|-------------|------------|
| InDevelopment | Initial state after creation.  In this state, only the owning app can use the schema extension to add data to the targeted resource. The schema extension can be updated with additive changes and it can be deleted. Additionally, in this state, only the owning app can extend resources with this schema definition and only in the same directory where the owning app is registered. You can move the schema extension from *InDevelopment* to the *Available* state. |
| Available |  The schema extension schema is available for use by all apps and can be used by any app to extend resources (as long as that app has permissions to that resource). The schema extension can be updated with additive changes but it can **not** be deleted. You can move the schema extension from *Available* to the *Deprecated* state. | 
| Deprecated |  When the schema extension is *Deprecated*, applications can still read and update extension properties based on the schema extension. The schema extension is not available to be viewed and cannot be used to create new properties. The schema extension cannot be updated or deleted. You can move a schema extension from *Deprecated* back to the *Available* state. |

### Supported property data types 
The following data types are supported when defining a property in a schema extension:

| Property Type | Remarks |
|-------------|------------|
| Binary | 256 bytes maximum. |
| Boolean | Not supported for messages, events and posts. |
| DateTime | Must be specified in ISO 8601 format. Will be stored in UTC. |
| Integer | 32-bit value. Not supported for messages, events and posts. |
| String | 256 characters maximum. |

### Azure AD directory schema extensions
Azure AD Graph API already supports schema extensions. Any data created through directory schema extensions will not be accessible through Microsoft Graph schema extensions. However, properties based on Azure AD directory schema extensions may still be created, read, updated and deleted through Microsoft Graph (using the syntax for Azure AD Graph directory schema extensions).  Registering directory schema extensions through Microsoft Graph is not possible currently.  We will be working to align these models, so that in the future you can access any existing directory schema extensions through Microsoft Graph schema extensions. 

## Permissions
The same [permission scopes](../authorization/permission_scopes.md) that are required to read from or write to a specific resource are also required to read from or write to any extensions data on that resource.  For example, for an app to be able to update the signed-in user's profile with custom app data, the app must have been granted the *User.ReadWrite.All* permission.

Additionally, to create and manage schema extension definitions, an application must be granted the *Directory.AccessAsUser.All* permission.

## Supported Resources

Both forms of extensibility are currently supported in preview on the Microsoft Graph /beta endpoint for the following resources only:

 - [administrative unit](../api-reference/beta/resources/administrativeunit.md) (coming soon  for schema extensions)
 - [calendar event](../api-reference/beta/resources/event.md)
 - An Office 365 group [calendar event](../api-reference/beta/resources/event.md) or conversation thread [post](../api-reference/beta/resources/post.md)
 - [device](../api-reference/beta/resources/device.md)
 - [group](../api-reference/beta/resources/group.md)
 - [message](../api-reference/beta/resources/message.md)
 - [organization](../api-reference/beta/resources/organization.md) (coming soon  for schema extensions)
 - [personal contact](../api-reference/beta/resources/contact.md) (coming soon  for schema extensions)
 - [user](../api-reference/beta/resources/user.md) 
 
## Known limitations for extensions
-   Filtering on schema extension property values is not yet supported.
-   Change tracking (Delta Query) is not supported for open or schema extension properties.
-   Creating a resource and an open extension (using ```POST``) at the same time is not supported for administrative unit, device, group, organization or user.
-   Deleting registered schema will remove access to data. This is a temporary limitation.
-   Deleting registered schema is possible at all times, however in future deletion will only be possible for schemas in the *InDevelopment* state.
-   To remove a schema extension Removing a property value (by setting to null) will remove the property from the extension complex type.
-   Directory resources currently limits the total number of schema extension property values that can be set on a resource, to 100.

## Extension examples
[Add custom data to Users using Open Extensions (preview)](extensibility_open_users.md)
[Add custom data to Groups using Schema Extensions (preview)](extensibility_schema_groups.md)
