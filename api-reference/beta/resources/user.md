# user resource type

Represents an Azure AD user account. Inherits from [directoryObject](directoryobject.md).


### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "appRoleAssignments",
    "calendar",
    "calendarGroups",
    "calendarView",
    "calendars",
    "contactFolders",
    "contacts",
    "createdObjects",
    "directReports",
    "drive",
    "events",
    "inferenceClassification",
    "joinedGroups",
    "mailFolders",
    "manager",
    "memberOf",
    "messages",
    "notes",
    "oauth2PermissionGrants",
    "ownedDevices",
    "ownedObjects",
    "people",
    "photo",
    "photos",
    "plans",
    "registeredDevices",
    "tasks",
    "trendingAround",
    "workingWith"
  ],
  "@odata.type": "microsoft.graph.user"
}-->

```json
{
  "aboutMe": "string",
  "accountEnabled": true,
  "assignedLicenses": [{"@odata.type": "microsoft.graph.assignedLicense"}],
  "assignedPlans": [{"@odata.type": "microsoft.graph.assignedPlan"}],
  "birthday": "String (timestamp)",
  "businessPhones": ["string"],
  "city": "string",
  "companyName": "string",
  "country": "string",
  "department": "string",
  "displayName": "string",
  "givenName": "string",
  "hireDate": "String (timestamp)",
  "id": "string (identifier)",
  "interests": ["string"],
  "jobTitle": "string",
  "mail": "string",
  "mailNickname": "string",
  "mobilePhone": "string",
  "mySite": "string",
  "officeLocation": "string",
  "onPremisesImmutableId": "string",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSecurityIdentifier": "string",
  "onPremisesSyncEnabled": true,
  "passwordPolicies": "string",
  "passwordProfile": {"@odata.type": "microsoft.graph.passwordProfile"},
  "pastProjects": ["string"],
  "postalCode": "string",
  "preferredLanguage": "string",
  "preferredName": "string",
  "provisionedPlans": [{"@odata.type": "microsoft.graph.provisionedPlan"}],
  "proxyAddresses": ["string"],
  "responsibilities": ["string"],
  "schools": ["string"],
  "skills": ["string"],
  "state": "string",
  "streetAddress": "string",
  "surname": "string",
  "usageLocation": "string",
  "userPrincipalName": "string",
  "userType": "string"
}

```
### Properties
| Property     | Type |Description|
|:---------------|:--------|:----------|
|aboutMe|String||
|accountEnabled|Boolean|                **true** if the account is enabled; otherwise, **false**. This property is required when a user is created.                             **true** if the account is enabled; otherwise, **false**. This property is required when a user is created.            |
|assignedLicenses|[AssignedLicense](assignedlicense.md) collection|The licenses that are assigned to the user.                            **Notes**: not nullable.             The licenses that are assigned to the user.                            **Notes**: not nullable.            |
|assignedPlans|[AssignedPlan](assignedplan.md) collection|The plans that are assigned to the user.                            **Notes**: not nullable.             The plans that are assigned to the user.                            **Notes**: not nullable.            |
|birthday|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|city|String|The city in which the user is located. The city in which the user is located.|
|country|String|The country/region in which the user is located; for example, “US” or “UK”. The country/region in which the user is located; for example, “US” or “UK”.|
|department|String|The name for the department in which the user works. The name for the department in which the user works.|
|onPremisesSyncEnabled|Boolean|                **true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default).                             **true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default).            |
|displayName|String|The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial and last name. This property is required when a user is created and it cannot be cleared during updates. The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial and last name. This property is required when a user is created and it cannot be cleared during updates.|
|givenName|String|The given name (first name) of the user. The given name (first name) of the user.|
|hireDate|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|onPremisesImmutableId|String|This property is used to associate an on-premises Active Directory user account to their Azure AD user object. This property must be specified when creating a new user account in the Graph if you are using a federated domain for the user’s **userPrincipalName** (UPN) property.                            **Important:** The **$** and **_** characters cannot be used when specifying this property.                                        **Notes**: Requires version 2013-11-08 or newer.             This property is used to associate an on-premises Active Directory user account to their Azure AD user object. This property must be specified when creating a new user account in the Graph if you are using a federated domain for the user’s **userPrincipalName** (UPN) property.                            **Important:** The **$** and **_** characters cannot be used when specifying this property.                                        **Notes**: Requires version 2013-11-08 or newer.            |
|interests|String collection||
|jobTitle|String|The user’s job title. The user’s job title.|
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the object was synced with the on-premises directory; for example: "2013-02-16T03:04:54Z"  Indicates the last time at which the object was synced with the on-premises directory; for example: "2013-02-16T03:04:54Z" The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|mail|String|The SMTP address for the user, for example, "jeff@contoso.onmicrosoft.com". The SMTP address for the user, for example, "jeff@contoso.onmicrosoft.com".|
|mailNickname|String|The mail alias for the user. This property must be specified when a user is created. The mail alias for the user. This property must be specified when a user is created.|
|mobilePhone|String|The primary cellular telephone number for the user. The primary cellular telephone number for the user.|
|mySite|String||
|id|String|The unique identifier for the user. Inherited from [directoryObject].                            **Notes**: **key**, immutable, not nullable, unique.             The unique identifier for the user. Inherited from [directoryObject].                            **Notes**: **key**, immutable, not nullable, unique.             Read-only.|
|onPremisesSecurityIdentifier|String|Contains the on-premises security identifier (SID) for the user that was synchronized from on-premises to the cloud.                            **Notes**: Requires version 1.5 or newer.             Contains the on-premises security identifier (SID) for the user that was synchronized from on-premises to the cloud.                            **Notes**: Requires version 1.5 or newer.            |
|passwordPolicies|String|Specifies password policies for the user. This value is an enumeration with one possible value being “DisableStrongPassword”, which allows weaker passwords than the default policy to be specified. “DisablePasswordExpiration” can also be specified. The two may be specified together; for example: "DisablePasswordExpiration, DisableStrongPassword". Specifies password policies for the user. This value is an enumeration with one possible value being “DisableStrongPassword”, which allows weaker passwords than the default policy to be specified. “DisablePasswordExpiration” can also be specified. The two may be specified together; for example: "DisablePasswordExpiration, DisableStrongPassword".|
|passwordProfile|[PasswordProfile](passwordprofile.md)|Specifies the password profile for the user. The profile contains the user’s password. This property is required when a user is created.            The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required. For information about the constraints that must be satisfied for a strong password, see **Password policy** under [Change your password](http://onlinehelp.microsoft.com/office365-enterprises/ff637578.aspx) in the Microsoft Office 365 help pages.  Specifies the password profile for the user. The profile contains the user’s password. This property is required when a user is created.            The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required. For information about the constraints that must be satisfied for a strong password, see **Password policy** under [Change your password](http://onlinehelp.microsoft.com/office365-enterprises/ff637578.aspx) in the Microsoft Office 365 help pages. |
|pastProjects|String collection||
|officeLocation|String|The office location in the user's place of business. The office location in the user's place of business.|
|postalCode|String|The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code. The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.|
|preferredLanguage|String|The preferred language for the user. Should follow ISO 639-1 Code; for example "en-US". The preferred language for the user. Should follow ISO 639-1 Code; for example "en-US".|
|preferredName|String||
|provisionedPlans|[ProvisionedPlan](provisionedplan.md) collection|The plans that are provisioned for the user.                            **Notes**: not nullable.             The plans that are provisioned for the user.                            **Notes**: not nullable.            |
|proxyAddresses|String collection|Fpr example: ["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]                            **Notes**: unique, not nullable, the **any** operator is required for filter expressions on multi-valued properties; for more information, see [Supported Queries, Filters, and Paging Options](https://msdn.microsoft.com/library/azure/dn727074.aspx).             Fpr example: ["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]                            **Notes**: unique, not nullable, the **any** operator is required for filter expressions on multi-valued properties; for more information, see [Supported Queries, Filters, and Paging Options](https://msdn.microsoft.com/library/azure/dn727074.aspx).            |
|responsibilities|String collection||
|schools|String collection||
|skills|String collection||
|state|String|The state or province in the user's address. The state or province in the user's address.|
|streetAddress|String|The street address of the user's place of business. The street address of the user's place of business.|
|surname|String|The user's surname (family name or last name).                            **Notes**: filterable.             The user's surname (family name or last name).                            **Notes**: filterable.            |
|businessPhones|String|The primary telephone number of the user's place of business. The primary telephone number of the user's place of business.|
|usageLocation|String|A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries.  Examples include: "US", "JP", and "GB".                            **Notes**: not nullable.             A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries.  Examples include: "US", "JP", and "GB".                            **Notes**: not nullable.            |
|userPrincipalName|String|The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created.             The verified domains for the tenant can be accessed from the **VerifiedDomains** property of [organization]. For example, for contoso.onmicosoft.com, tenant detail can be read by performing a GET to the following URL: https://graph.windows.net/contoso.onmicrosoft.com/organization?api-version=1.5.                            **Notes**: **key**, unique.             The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created.             The verified domains for the tenant can be accessed from the **VerifiedDomains** property of [organization]. For example, for contoso.onmicosoft.com, tenant detail can be read by performing a GET to the following URL: https://graph.windows.net/contoso.onmicrosoft.com/organization?api-version=1.5.                            **Notes**: **key**, unique.            |
|userType|String|A string value that can be used to classify user types in your directory, such as “Member” and “Guest”.                            **Notes**: Requires version 2013-11-08 or newer.             A string value that can be used to classify user types in your directory, such as “Member” and “Guest”.                            **Notes**: Requires version 2013-11-08 or newer.            |

### Relationships
| Relationship | Type |Description|
|:---------------|:--------|:----------|
|calendar|[Calendar](calendar.md)|The user's primary calendar. Navigation property. The user's primary calendar. Navigation property. Read-only.|
|calendarGroups|[CalendarGroup](calendargroup.md) collection|The user's calendar groups. Navigation property. The user's calendar groups. Navigation property. Read-only. Nullable.|
|calendarView|[Event](event.md) collection|The calendar view for the calendar. Navigation property. The calendar view for the calendar. Navigation property. Read-only. Nullable.|
|calendars|[Calendar](calendar.md) collection|The user's calendars. Navigation property. The user's calendars. Navigation property. Read-only. Nullable.|
|contactFolders|[ContactFolder](contactfolder.md) collection|The user's contacts folders. Navigation property. The user's contacts folders. Navigation property. Read-only. Nullable.|
|contacts|[Contact](contact.md) collection|The user's contacts. Navigation property. The user's contacts. Navigation property. Read-only. Nullable.|
|createdObjects|[directoryObject](directoryobject.md) collection|Directory objects that were created by the user. Requires version 2013-11-08 or newer. Directory objects that were created by the user. Requires version 2013-11-08 or newer. Read-only. Nullable.|
|directReports|[directoryObject](directoryobject.md) collection|The users and contacts that report to the user. (The users and contacts that have their manager property set to this user.) Inherited from [directoryObject].            HTTP Methods: GET The users and contacts that report to the user. (The users and contacts that have their manager property set to this user.) Inherited from [directoryObject].            HTTP Methods: GET Read-only. Nullable.|
|drive|[drive](drive.md)| Read-only.|
|events|[Event](event.md) collection|The user's events. Default is to show Events under the Default Calendar. Navigation property. The user's events. Default is to show Events under the Default Calendar. Navigation property. Read-only. Nullable.|
|inferenceClassification|[InferenceClassification](inferenceclassification.md)| Read-only.|
|joinedGroups|[Group](group.md) collection| Read-only. Nullable.|
|mailFolders|[MailFolder](mailfolder.md) collection| Read-only. Nullable.|
|manager|[directoryObject](directoryobject.md)|The user or contact that is this user’s manager. Inherited from [directoryObject].            HTTP Methods: GET, PUT, DELETE The user or contact that is this user’s manager. Inherited from [directoryObject].            HTTP Methods: GET, PUT, DELETE Read-only.|
|memberOf|[directoryObject](directoryobject.md) collection|The groups and directory roles that the user is a member of. Inherited from [directoryObject].            HTTP Methods: GET The groups and directory roles that the user is a member of. Inherited from [directoryObject].            HTTP Methods: GET Read-only. Nullable.|
|messages|[Message](message.md) collection|The messages in a mailbox or folder. Navigation property. The messages in a mailbox or folder. Navigation property. Read-only. Nullable.|
|notes|[Notes](notes.md)| Read-only.|
|ownedDevices|[directoryObject](directoryobject.md) collection|Devices that are owned by the user. Devices that are owned by the user. Read-only. Nullable.|
|ownedObjects|[directoryObject](directoryobject.md) collection|Directory objects that are owned by the user. Requires version 2013-11-08 or newer. Directory objects that are owned by the user. Requires version 2013-11-08 or newer. Read-only. Nullable.|
|people|[Person](person.md) collection| Read-only. The most relevant people to the user. The collection is ordered by their relevance to the user, which is determined by the user's communication, collaboration and business relationships. A person is an aggregation of information from across mail, contacts and social networks.|
|photo|[Photo](photo.md)| Read-only.|
|photos|[Photo](photo.md) collection| Read-only. Nullable.|
|plans|[plan](plan.md) collection| Read-only. Nullable. Plans shared with the user. |
|registeredDevices|[directoryObject](directoryobject.md) collection|Devices that are registered for the user. Devices that are registered for the user. Read-only. Nullable.|
|tasks|[task](task.md) collection| Read-only. Nullable. Tasks assigned to the user. |
|trendingAround|[item](item.md) collection| Read-only. Nullable.|
|workingWith|[User](user.md) collection| Read-only. Nullable.|

### Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get user](../api/user_get.md) | [user](user.md) |Read properties and relationships of user object.|
|[Create appRoleAssignment](../api/user_post_approleassignments.md) |[appRoleAssignment](approleassignment.md)| Create a new appRoleAssignment by posting to the appRoleAssignments collection.|
|[List appRoleAssignments](../api/user_list_approleassignments.md) |[appRoleAssignment](approleassignment.md) collection| Get a appRoleAssignment object collection.|
|[Create CalendarGroup](../api/user_post_calendargroups.md) |[CalendarGroup](calendargroup.md)| Create a new CalendarGroup by posting to the calendarGroups collection.|
|[List calendarGroups](../api/user_list_calendargroups.md) |[CalendarGroup](calendargroup.md) collection| Get a CalendarGroup object collection.|
|[List calendarView](../api/user_list_calendarview.md) |[Event](event.md) collection| Get a Event object collection.|
|[Create Calendar](../api/user_post_calendars.md) |[Calendar](calendar.md)| Create a new Calendar by posting to the calendars collection.|
|[List calendars](../api/user_list_calendars.md) |[Calendar](calendar.md) collection| Get a Calendar object collection.|
|[Create ContactFolder](../api/user_post_contactfolders.md) |[ContactFolder](contactfolder.md)| Create a new ContactFolder by posting to the contactFolders collection.|
|[List contactFolders](../api/user_list_contactfolders.md) |[ContactFolder](contactfolder.md) collection| Get all the contact folders in the signed-in user's mailbox.|
|[Create Contact](../api/user_post_contacts.md) |[Contact](contact.md)| Create a new Contact by posting to the contacts collection.|
|[List contacts](../api/user_list_contacts.md) |[Contact](contact.md) collection| Get all the contacts in the signed-in user's mailbox.|
|[Create createdObject](../api/user_post_createdobjects.md) |[directoryObject](directoryobject.md)| Create a new createdObject by posting to the createdObjects collection.|
|[List createdObjects](../api/user_list_createdobjects.md) |[directoryObject](directoryobject.md) collection| Get a createdObject object collection.|
|[Create directReport](../api/user_post_directreports.md) |[directoryObject](directoryobject.md)| Create a new directReport by posting to the directReports collection.|
|[List directReports](../api/user_list_directreports.md) |[directoryObject](directoryobject.md) collection| Get a directReport object collection.|
|[Create Event](../api/user_post_events.md) |[Event](event.md)| Create a new Event by posting to the events collection.|
|[List events](../api/user_list_events.md) |[Event](event.md) collection| Get a list of event objects in the user's mailbox. The list contains single instance meetings and series masters.|
|[Create Group](../api/user_post_joinedgroups.md) |[Group](group.md)| Create a new Group by posting to the joinedGroups collection.|
|[List joinedGroups](../api/user_list_joinedgroups.md) |[Group](group.md) collection| Get a Group object collection.|
|[Create MailFolder](../api/user_post_mailfolders.md) |[MailFolder](mailfolder.md)| Create a new MailFolder by posting to the mailFolders collection.|
|[List mailFolders](../api/user_list_mailfolders.md) |[MailFolder](mailfolder.md) collection| Get all the mail folders in the signed-in user's mailbox.|
|[Create memberOf](../api/user_post_memberof.md) |[directoryObject](directoryobject.md)| Create a new memberOf by posting to the memberOf collection.|
|[List memberOf](../api/user_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get a memberOf object collection.|
|[Create Message](../api/user_post_messages.md) |[Message](message.md)| Create a new Message by posting to the messages collection.|
|[List messages](../api/user_list_messages.md) |[Message](message.md) collection| Get all the messages in the signed-in user's mailbox.|
|[Create oAuth2PermissionGrant](../api/user_post_oauth2permissiongrants.md) |[oAuth2PermissionGrant](oauth2permissiongrant.md)| Create a new oAuth2PermissionGrant by posting to the oauth2PermissionGrants collection.|
|[List oauth2PermissionGrants](../api/user_list_oauth2permissiongrants.md) |[oAuth2PermissionGrant](oauth2permissiongrant.md) collection| Get a oAuth2PermissionGrant object collection.|
|[Create ownedDevice](../api/user_post_owneddevices.md) |[directoryObject](directoryobject.md)| Create a new ownedDevice by posting to the ownedDevices collection.|
|[List ownedDevices](../api/user_list_owneddevices.md) |[directoryObject](directoryobject.md) collection| Get a ownedDevice object collection.|
|[Create ownedObject](../api/user_post_ownedobjects.md) |[directoryObject](directoryobject.md)| Create a new ownedObject by posting to the ownedObjects collection.|
|[List ownedObjects](../api/user_list_ownedobjects.md) |[directoryObject](directoryobject.md) collection| Get a ownedObject object collection.|
|[List people](../api/user_list_people.md) |[Person](person.md) collection| Get a Person object collection.|
|[Create photo](../api/user_post_photos.md) |[Photo](photo.md)| Create a new photo by posting to the photos collection.|
|[List photos](../api/user_list_photos.md) |[Photo](photo.md) collection| Get a photo object collection.|
|[List plans](../api/user_list_plans.md) |[plan](plan.md) collection| Get a plan object collection.|
|[Create registeredDevice](../api/user_post_registereddevices.md) |[directoryObject](directoryobject.md)| Create a new registeredDevice by posting to the registeredDevices collection.|
|[List registeredDevices](../api/user_list_registereddevices.md) |[directoryObject](directoryobject.md) collection| Get a registeredDevice object collection.|
|[List tasks](../api/user_list_tasks.md) |[task](task.md) collection| Get a task object collection.|
|[Create trendingAround](../api/user_post_trendingaround.md) |[item](item.md)| Create a new trendingAround by posting to the trendingAround collection.|
|[List trendingAround](../api/user_list_trendingaround.md) |[item](item.md) collection| Get a trendingAround object collection.|
|[Create User](../api/user_post_workingwith.md) |[User](user.md)| Create a new User by posting to the workingWith collection.|
|[List workingWith](../api/user_list_workingwith.md) |[User](user.md) collection| Get a User object collection.|
|[Update](../api/user_update.md) | [user](user.md)  |Update user object. |
|[Delete](../api/user_delete.md) | None |Delete user object. |
|[checkMembergroups](../api/user_checkmembergroups.md)|String collection|Check for membership in a list of groups. The check is transitive.|
|[getMemberGroups](../api/user_getmembergroups.md)|String collection|Return all the groups that the user is a member of. The check is transitive.|
|[getMemberObjects](../api/user_getmemberobjects.md)|String collection|Return all of the groups and directory roles that the user is a member of. The check is transitive.|
|[reminderView](../api/user_reminderview.md)|[Reminder](reminder.md) collection|Return a list of calendar reminders within the start and end times specified.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->