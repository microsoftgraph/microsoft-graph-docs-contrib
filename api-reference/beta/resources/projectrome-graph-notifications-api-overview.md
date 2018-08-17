# Use the MS Graph notifications REST API
You can use the Graph notifications API in Microsoft Graph to send push notifications to a user. Simply target a user account to publish a notification, and the platform will help you to fan-out and deliver this notification to all device endpoints. Graph notifications API requests are performed on behalf of a user via [delegated permissions](../../../concepts/permissions_reference.md#delegated-permissions-application-permissions-and-effective-permissions) and the [notification permission]( ../../../concepts/permissions_reference.md), which can be used with either personal or work and school accounts.
This type of user-centric notification is represented by the [notification](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/projectrome_notification) resource and are stored in Microsoft Graph, which can then be accessed and managed by the publishing app through the client-side Rome SDK APIs. 

## Next steps
- See the [notification resource](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/projectrome_notification) and create notifications to engage with your users. 
- (Coming soon) Try the API in the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).
