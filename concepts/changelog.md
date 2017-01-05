# Microsoft Graph changelog

This changelog covers what's changed in Microsoft Graph, including the v1.0 and beta endpoint Microsoft Graph APIs.  

## December 2016

### Excel APIs

**Change type**|**Endpoint**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0|Added workbookPivotTable resource, refresh and refreshAll action on pivotTables, workbookRangeView resource, visibleView action on the filtered range to return workbookRangeView to the user, get rows collection and range resource off of visibleView, columnsAfter, columnsBefore, resizedRange, rowsAbove, and rowsBelow functions off of range resource, and new table properties.|

### Intune APIs

**Change type**|**Endpoint**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added resources and method APIs for Microsoft Intune. This is a large set of resources and methods to support the public preview of Intune on Azure Portal. For information about the Intune service, see the [Intune documentation](https://go.microsoft.com/fwlink/?linkid=836405). For information about the Intune resources and APIs, see [Working with Intune in Microsoft Graph](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/intune_graph_overview).|

## October 2016

### Authorization provider

**Change type**|**Endpoint**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0 and beta|The v2.0 auth endpoint now supports the client_credentials OAuth grant, which can be used for [daemon & long running processes in business scenarios](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-protocols-oauth-client-creds/).|
|Addition|v1.0 and beta|The v2.0 auth endpoint now supports [permission scopes that require administrator's consent](http://graph.microsoft.io/en-us/docs/authorization/permission_scopes#permission-scope-details), via the [admin consent endpoint](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-scopes/#admin-restricted-scopes).|
|Addition|v1.0 and beta|The v2.0 auth endpoint now supports administrative consent for all users in a tenant, via the [admin consent endpoint](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-scopes/#admin-restricted-scopes).|

### Invitation APIs

**Change type**|**Endpoint**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added invitedUserType property to the invitation entity type, that defines the type of user (“Guest” or “Member”) that is invited.|
|Deletion|Beta|We will be removing the invitedToGroups property from the invitation entity-type on 11/11/2016. This means that you will no longer be able to add an invited user to a group using this API. Instead, use the [add member API](https://graph.microsoft.io/en-us/docs/api-reference/v1.0/api/group_post_members) to add a user to a group.|

## September 2016

### Azure AD application proxy

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Azure AD Application Proxy APIs are now available in the Microsoft Graph beta endpoint. These APIs allow for secure publishing of on-premises applications to users outside the corporate network using Azure AD as the common control plane for access. You can use the published APIs to write applications that can retrieve and update various aspects of application proxy, such as _connectors_, _connectorGroups_ and the _onPremisesPublishing_ settings of an application.|

### Drive

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added _shared_ collection to allow accessing shared driveItems by shareId or sharing URL.|
|Addition|Beta|Added _search_ function to a drive, which allows searching for more items than just those in the drive’s root folder.|
  

### DriveItem

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added support for _createUploadSession_, which allows uploading files larger than 4 MB to OneDrive, OneDrive for Business, and SharePoint document libraries.|
|Addition|Beta|Added _sharepointIds_ property to driveItem that returns traditional SharePoint API identifiers for driveItems stored in SharePoint.|
|Addition|Beta|Added additional properties on _remoteItem_.|
|Addition|Beta|Added the _quickXorHash_ value for files in OneDrive for Business.|
|Addition|Beta|Added scope to the _createSharingLink_ to allow creating company sharable links or anonymous sharing links.|

### Extended properties

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|[Extended properties](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/extended-properties-overview) are now supported by the following resources: message, mailFolder, event, calendar, contact, contactFolder, group event, group calendar, group post.|

### Groups

Added support for dynamic group membership through the public preview API, including the additions listed in the following table.

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added **membershipRule** property contains rules that controls the memberships for this group, if the group is a dynamic group.|
|Addition|Beta|Added **membershipRuleProcessingState** property to control whether dynamic membership processing is on or paused for this group.|
|Addition|Beta|Set the **groupTypes** property to contain **"DynamicMembership"** to light up the dynamic groups capability for this group.|
|Addition|Beta|Added **preferredLanguage** property to indicate the preferred language for an Office 365 group.|
|Addition|Beta|Added **theme** property to specify an Office 365 group's color theme.|

### Hybrid deployment support

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Apps can use v1.0 Outlook Mail, Calendar, and Contacts APIs to access on-premises mailboxes in a hybrid deployment with Exchange 2016 Cumulative Update 3 (CU3). Find more details about REST API support in specific [hybrid deployments](https://graph.microsoft.io/en-us/docs/overview/hybrid_rest_support). **Note:** If you're using these sets of API in v1.0, you can now find your apps, including production apps, working for on-premises mailboxes that meet the specific hybrid deployment requirements. This capability is only in preview.|

### IdentityRiskEvents

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Change|Beta|As part of the schema change where the type of two location properties is being replaced by a new complex type in the identityRiskEvents endpoint, the following properties are changed/added in the identityRiskEvents endpoint:</br>**location** – changed from Edm.String to ComplexType signInLocation.<br/>**previousLocation** – changed from Edm.String to ComplexType signInLocation.<br/>**signInLocation** – new ComplexType that contains city, state, countryOrRegion and geoCoordinates properties.<br/>**geoCoordinates** – new ComplexType that contains latitude and longitude properties.|

### Invitation manager

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Invitation manager APIs are now available in the Microsoft Graph beta endpoint. You can use invitation manager APIs to create an invite, in order to add an external user to the organization. As part of the invitation, you can also choose to add the invited user to an Office 365 group. For more details, see [invitation manager](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/invitation).|

### OneDrive

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added **CreateUploadSession** method on **driveItem**, which allows large file and resumable uploads.|
|Addition|v1.0|Added properties for tracking SharePoint IDs on items from SharePoint (**sharepointIds**) and a property to identify root folders (**root**).|
|Addition|v1.0|Added **Shares** root collection, which can be used with shareIds or sharing links to access shared items in OneDrive and SharePoint. Returns a new type, sharedDriveItem.|
|Addition|v1.0|Added **Invite** method on driveItem, which allows adding permissions to items. |
|Addition|v1.0|Added **Search** method on drive, which allows searching across items in the drive and shared items. |
|Addition|v1.0|Added **processingMetadata** property on file complex type quickXorHash property on hashes complex type. |
|Addition|v1.0|Added **quickXorHash** property on hashes complex type. |

### Outlook calendar

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added the **onlineMeetingUrl** property to the [event](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/event) resource.|
|Addition|Beta|Added [forward](http://graph.microsoft.io/en-us/docs/api-reference/beta/api/event_forward) action to the event resource.|
|Addition|Beta|Added the following properties to the [calendar](http://graph.microsoft.io/en-us/docs/api-reference/beta/resources/calendar) resource to support calendar sharing: **canEdit**, **canShare**, **canViewPrivateItems**, **isShared**, **isShareWithMe**, and **owner**.|

### Outlook mail

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added the [mailboxSettings](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/mailboxsettings) complex type, which includes the **automaticRepliesSetting**, **timeZone**, and **language** properties.|
|Addition|v1.0|Added the **mailboxSettings** property to the [user](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/user) resource.|
|Addition|Beta|Added support for creating, listing, getting, and deleting one or more instances of [mention](http://graph.microsoft.io/en-us/docs/api-reference/beta/resources/mention) in a message. Mentions support calling out to get the attention of other users in a message.|
|Addition|Beta|Added support for the [getMailTips](http://graph.microsoft.io/en-us/docs/api-reference/beta/api/user_getmailtips) action to get any MailTips for specific recipients. Added the following resources: automaticRepliesMailTips, mailTips, mailTipsError.|

### Query parameters

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Change|Beta|Query parameters without ‘$’ prefixes are supported as of 09/26/16. The ‘$’ prefix in query parameters is optional. For details, see the [Supporting query parameters without $ prefixes in Microsoft Graph](http://dev.office.com/queryparametersinMicrosoftGraph) blog post.|

### SharePoint

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Access to SharePoint sites and [lists by ID](http://graph.microsoft.io/en-us/docs/api-reference/beta/api/list_get) or [path/URL](http://graph.microsoft.io/en-us/docs/api-reference/beta/api/baseitem_getbyurl).|
|Addition|Beta|Support for [listing, creating, getting, and deleting instances of listItem](http://graph.microsoft.io/en-us/docs/api-reference/beta/resources/listitem).|

### Users

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added **refreshTokensValidFromDateTime** read-only property to indicate when refresh or session tokens are valid from. Any tokens issued before this time are invalid, and any attempt to use them would force a new sign-in for the user.|
|Addition|Beta|Added **showInAddressList** property to control if the Outlook global address list should contain this user.|
|Addition|Beta|Added **invalidateAllRefreshTokens** service action that invalidates all of the user's refresh and session tokens issued to applications, by resetting the **refreshTokensValidFromDateTime** user property to the current date-time.|


### Webhooks

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added Drive root items to Webhooks as a resource that is available to subscribe to.|

## August 2016

### Contacts

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|As part of the schema change where a few properties are being removed and corresponding collections are being added to contacts endpoint, the following properties have been added to the contacts endpoint: _Websites – Collection(ComplexType: Website)_,_Phones – Collection (ComplexType: Phone)_, _PostalAddress – Collection(ComplexType: PhysicalAddress)_. For details, see the [Upcoming changes to Contacts and People APIs](https://blogs.msdn.microsoft.com/exchangedev/2016/06/09/upcoming-changes-to-contacts-and-people-apis/) blog post.|
|Deletion|Beta|As part of the schema change where a few properties are being removed and corresponding collections are being added to contacts endpoint, the following properties have been removed from the contacts endpoint: _BusinessHomePage_,_HomePhones_, _MobilePhone1_, _BusinessPhones_, _HomeAddress_, _BusinessAddress_, _OtherAddress_. For details, see the [Upcoming changes to Contacts and People APIs](https://blogs.msdn.microsoft.com/exchangedev/2016/06/09/upcoming-changes-to-contacts-and-people-apis/) blog post.|

### Excel APIs

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Excel REST API on Microsoft Graph is generally available. Now you can build rich and deep integrations with Excel workbooks in Office 365. See the [Power your apps with the new Excel REST API on the Microsoft Graph](http://dev.office.com/blogs/power-your-apps-with-the-new-excel-rest-api) blog post for more details.|

### People

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Change|Beta|Property _WebSite_ is renamed to _Websites_. For details, see [Upcoming changes to Contacts and People APIs](https://blogs.msdn.microsoft.com/exchangedev/2016/06/09/upcoming-changes-to-contacts-and-people-apis/).|

### Privileged Identity Management

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Privileged Identity Management (PIM) REST APIs now are available in the Microsoft Graph beta endpoint. [Privileged Identity Management](https://azure.microsoft.com/en-us/documentation/articles/active-directory-privileged-identity-management-configure/) provides “just in time” activation for privileged Azure AD organizational roles such as Global Administrator, Billing Administrator, and so on. You can use the published APIs to write applications that retrieve and update privileged role assignments, and activate users into roles. For details, see [Microsoft Graph: Azure AD Privileged Identity Management Preview APIs available in Beta](http://dev.office.com/blogs/microsoft-graph-azure-ad-privileged-identity-management-apis-beta) and [Azure AD Privileged Identity Management](https://graph.microsoft.io/en-us/docs/api-reference/beta/resources/privilegedidentitymanagement_root).|
 

   

