---
title: "Microsoft Graph Data Connect GroupDetails_v0 dataset"
description: "Use the The GroupDetails_v0 dataset to represent the Azure Active Directory (Azure AD) groups data for a tenant."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
ms.custom: datasets:dataset-name
---

# Microsoft Graph Data Connect GroupDetails_v0 dataset

## Description

The GroupDetails_v0 dataset represents the Azure Active Directory (Azure AD) groups data for a tenant, such as Microsoft 365 groups or a security group. 

## Scenarios

- Generate analytics for groups created by all the users based on creation date.
- Analyze groups that got expired or deleted in a particular time span.
- Access display names of all the groups existing for a tenant.
- Access all the groups marked as sensitive.
- Understand geographic location preferences set for storing group’s data, such as eails, files, and so on.

## Questions

- How many groups were created for the tenant in a time range?
- What are the unique types of groups that were created?
- Which of the existing groups are marked as sensitive?
- Which groups have set their preferred language as English?
- How many groups have enabled on premises sync?
- What was the last synced date time of all the groups for the tenant?
- Which groups got deleted in a time range?
- Which groups have set geo-location preference as Europe for group data storage?
- When was a user added as a group member?
- When did a user leave as a group member?

## Joining with other datasets

The GroupDetails_v0 dataset can be joined with the GroupOwners_v0 and GroupMembers_v0 datasets.

## Definitions

- Groups are collections of principals with shared access to resources in Microsoft services or in your app. Different principals such as users, other groups, devices, and applications can be part of groups. Using groups helps users avoid working with individual principals and simplifies management of access to user resources.
- Azure Active Directory (Azure AD) supports the following types of groups.
  - Microsoft 365 groups
  - Security groups
  - Mail-enabled security groups
  - Distribution groups
- Only Microsoft 365 and security groups can be managed by the tenant users. Mail-enabled security groups and distribution groups are read-only through Microsoft Graph.


## Schema

| Name  | Type  |  Description  |  FilterOptions  |  IsDateFilter  | 
| ----------- | ----------- | ----------- | ----------- | ----------- |
| id  |	string  |	Unique directory ID for the group in Azure AD. |	No |	None |
| deletedDateTime |	datetime |	Timestamp in UTC when group was deleted; "null" if group is active. |	No |	None |
| classification |	string |	Defines the group sensitivity classification selected. |	No |	None |
| createdDateTime |	datetime |	Timestamp in UTC when the group was created. |	No |	None |
| description |	string |	User specified description for the group. |	No |	None |
| displayName |	string |	The display name for the group. |	No	| None |
| expirationDateTime |	datetime |	Timestamp in UTC when group is set to expire. |	No |	None |
| groupTypes |	string |	Specified type of group and membership. |	No |	None |
| isAssignableToRole |	boolean |	Indicates if group can have AAD role assigned. |	No |	None |
| mail |	string |	SMTP address of the group.  |	No |	None |
| mailEnabled |	boolean |	Specifies if Group is mail enabled. |	No |	None |
| mailNickname |	string |	Mail alias for the group unique to tenant. |	No |	None |
| membershipRule |	string |	The rule determines if membership is dynamic. |	No |	None |
| membershipRuleProcessingState |	string |	Determines if dynamic membership is on or paused; "null" if not set. | No |	None |
| onPremisesDomainName	| string |	Domain name for onpremise AD groups. |	No |	None |
| onPremisesLastSyncDateTime |	datetime |	Timestamp for last sync of onpremise AD groups.	| No |	None |
| onPremisesSyncEnabled |	boolean |	True if synced from onpremise AD; "null" if not synced from AD; false if used to not anymore. |	No | None |
| preferredDataLocation |	string |	Physical geographic location for the group data storage, such as emails, files, chat, etc. |	No |	None |
| preferredLanguage |	string |	Preferred language set for the group. |	No |	None |
| proxyAddresses |	string |	Email addresses that direct to the same group mailboxes as this group. |	No |	None |
| renewedDateTime |	datetime |	Timestamp in UTC when group was last renewed. |	No |	None |
| resourceProvisioningOptions |	string |	Specifies the group resources that are provisioned as part of Microsoft 365 Group creation. *Possible value:* \"Team\"." |	No |	None |
| securityEnabled |	boolean |	Specifies if the group is a security group. |	No |	None |
| securityIdentifier |	string |	Security identifier for the group. |	No |	None |
| theme	| string |	Specifies a Microsoft 365 group color theme. |	No |	None |
| visibility |	string |	Specifies the group join policy and content visibility for the group. |	No |	None |
| ODataType |	string |  	Data type of the current folder. |	No |	None |
| pObjectId |	string |  	Object id |	No |	None |
| ptenant |	string |  	Tenant id |	No |	None |

## JSON representation

```json
{
"id": "String (identifier)",
"deletedDateTime": "String (timestamp)",
"classification": "String",
"createdDateTime": "String (timestamp)",
"description": "String",
"displayName": "String",
"expirationDateTime": "String (timestamp)",
"groupTypes": ["String"],
"isAssignableRole": false,
"mail": "String",
"mailEnabled": true,
"mailNickname": "String",
"membershipRule": "String",
"membershipRuleProcessingState": "String",
"onPremisesLastSyncDateTime": "String (timestamp)",
"onPremisesDomainName": "String"
"onPremisesSyncEnabled": true,
"preferredDataLocation": "String",
"preferredLanguage": "String",
"proxyAddresses": ["String"],
"renewedDateTime": "String (timestamp)",
"resourceProvisioningOptions": ["String"],
"securityEnabled": true,
"securityIdentifier": "String",
"theme": "String",
"visibility": "String",
"ODataType": "#microsoft.graph.group",
"pObjectId": "String",
"ptenant": "String (identifier)"
}
```

## Sample 

```json 
{"id":"01cc3e7a-3e1b-40bd-b24d-9cfbcf119a14","deletedDateTime":"2018-11-07T14:37:21Z","classification":"Confidential","createdDateTime":"2021-10-20T07:30:46Z","description":null,"displayName":"DeniedUsersForSdfDvtGen2","expirationDateTime":"2021-10-12T08:38:59Z","groupTypes":[],"isAssignableToRole":”False”,"mail":"deniedusersforsdfdvtgen2@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"deniedusersforsdfdvtgen2","membershipRule": "(user.userType -eq \"Guest\") or (user.extensionAttribute2 -in [\"50\",\"53\",\"90\",\"91\",\"92\",\"93\"])","membershipRuleProcessingState":”On”,"onPremisesDomainName":"redmond.corp.microsoft.com","onPremisesLastSyncDateTime": "2022-07-11T03:18:28Z","onPremisesSyncEnabled":”True”,"preferredDataLocation":”NAM”,"preferredLanguage":”En-US”,"proxyAddresses":["SMTP:deniedusersforsdfdvtgen2@contosotest4.onmicrosoft.com"],"renewedDateTime":"2021-10-20T07:30:46Z","resourceProvisioningOptions":[],"securityEnabled":true,"securityIdentifier":"S-1-12-1-30162554-1086144027-4221324722-345641423","theme":”Blue”,"visibility":null,"ODataType":"#microsoft.graph.group","pObjectId":"01cc3e7a-3e1b-40bd-b24d-9cfbcf119a14","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"aabf2ee7-519c-4601-9658-ca3cf21839cd","deletedDateTime":null,"classification":null,"createdDateTime":"2021-03-31T19:23:26Z","description":null,"displayName":"AllowedUsersForPdtDvtUK","expirationDateTime":null,"groupTypes":[],"isAssignableToRole":null,"mail":"AllowedUsersForPdtDvtUK@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"AllowedUsersForPdtDvtUK","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SMTP:AllowedUsersForPdtDvtUK@contosotest4.onmicrosoft.com"],"renewedDateTime":"2021-03-31T19:23:26Z","resourceProvisioningOptions":[],"securityEnabled":true,"securityIdentifier":"S-1-12-1-2864656103-1174491548-1019893910-3443071218","theme":null,"visibility":null,"ODataType":"#microsoft.graph.group","pObjectId":"aabf2ee7-519c-4601-9658-ca3cf21839cd","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"2e4b3b4a-6f37-466c-a21b-976ad4518e5a","deletedDateTime":null,"classification":null,"createdDateTime":"2021-10-20T06:25:25Z","description":null,"displayName":"DeniedUsersForPdtDvtGen2","expirationDateTime":null,"groupTypes":[],"isAssignableToRole":null,"mail":"deniedusersforpdtdvtgen2@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"deniedusersforpdtdvtgen2","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SMTP:deniedusersforpdtdvtgen2@contosotest4.onmicrosoft.com"],"renewedDateTime":"2021-10-20T06:25:25Z","resourceProvisioningOptions":[],"securityEnabled":true,"securityIdentifier":"S-1-12-1-776682314-1181511479-1788287906-1519276500","theme":null,"visibility":null,"ODataType":"#microsoft.graph.group","pObjectId":"2e4b3b4a-6f37-466c-a21b-976ad4518e5a","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"f026a7a2-c1ed-4d10-bfd2-df5772a0d3f4","deletedDateTime":null,"classification":null,"createdDateTime":"2018-07-16T12:18:55Z","description":"Groupa20c15f8-d466-4ad3-a650-
4df826af4e22","displayName":"Groupa20c15f8","expirationDateTime":null,"groupTypes":["Unified"],"isAssignableToRole":null,"mail":"groupa20c15f8@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"groupa20c15f8","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SPO:SPO_70e575f2-820c-4da1-832b-2118c56a4be8@SPO_537d6c63-efb6-4922-8643-17921eb1b0dd","SMTP:groupa20c15f8@contosotest4.onmicrosoft.com"],"renewedDateTime":"2018-07-16T12:18:55Z","resourceProvisioningOptions":[],"securityEnabled":false,"securityIdentifier":"S-1-12-1-4029065122-1292943853-1474286271-4107509874","theme":null,"visibility":"Public","ODataType":"#microsoft.graph.group","pObjectId":"f026a7a2-c1ed-4d10-bfd2-df5772a0d3f4","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"39662603-3f65-4abb-98ac-1a0a02f0aaf2","deletedDateTime":null,"classification":null,"createdDateTime":"2018-05-01T18:38:03Z","description":null,"displayName":"testDl","expirationDateTime":null,"groupTypes":[],"isAssignableToRole":null,"mail":"testdl@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"testDl","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SMTP:testdl@contosotest4.onmicrosoft.com"],"renewedDateTime":"2018-05-01T18:38:03Z","resourceProvisioningOptions":[],"securityEnabled":false,"securityIdentifier":"S-1-12-1-962995715-1253785445-169520280-4071288834","theme":null,"visibility":null,"ODataType":"#microsoft.graph.group","pObjectId":"39662603-3f65-4abb-98ac-1a0a02f0aaf2","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"c3b42b09-cfc0-40db-a558-9ffa0b7fb0a6","deletedDateTime":null,"classification":null,"createdDateTime":"2019-06-11T00:15:08Z","description":null,"displayName":"AllowedUsersForPdtDvt","expirationDateTime":null,"groupTypes":[],"isAssignableToRole":null,"mail":"allowedusersforpdtdvt@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"allowedusersforpdtdvt","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SMTP:allowedusersforpdtdvt@contosotest4.onmicrosoft.com"],"renewedDateTime":"2019-06-11T00:15:08Z","resourceProvisioningOptions":[],"securityEnabled":true,"securityIdentifier":"S-1-12-1-3283364617-1088147392-4204746917-2796584715","theme":null,"visibility":null,"ODataType":"#microsoft.graph.group","pObjectId":"c3b42b09-cfc0-40db-a558-9ffa0b7fb0a6","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"a2db7abf-454a-4d13-9d88-6ebec9ec8cfe","deletedDateTime":null,"classification":null,"createdDateTime":"2019-06-10T20:49:53Z","description":null,"displayName":"AllowedUsersForSdfDvt","expirationDateTime":null,"groupTypes":[],"isAssignableToRole":null,"mail":"allowedusersforsdfdvt@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"allowedusersforsdfdvt","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SMTP:allowedusersforsdfdvt@contosotest4.onmicrosoft.com"],"renewedDateTime":"2019-06-10T20:49:53Z","resourceProvisioningOptions":[],"securityEnabled":true,"securityIdentifier":"S-1-12-1-2732292799-1293108554-3194914973-
4270648521","theme":null,"visibility":null,"ODataType":"#microsoft.graph.group","pObjectId":"a2db7abf-454a-4d13-9d88-6ebec9ec8cfe","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"5075b7f0-918c-4dd8-a1c0-636ee02d42f6","deletedDateTime":null,"classification":null,"createdDateTime":"2018-06-13T04:06:23Z","description":"Contoso AI","displayName":"Contoso AI","expirationDateTime":null,"groupTypes":["Unified"],"isAssignableToRole":null,"mail":"Contosoai@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"Contosoai","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SPO:SPO_52dc6520-f9b8-4d5c-b9f5-d6f1a5787bac@SPO_537d6c63-efb6-4922-8643-17921eb1b0dd","SMTP:Contosoai@contosotest4.onmicrosoft.com"],"renewedDateTime":"2018-06-13T04:06:23Z","resourceProvisioningOptions":[],"securityEnabled":false,"securityIdentifier":"S-1-12-1-1349892080-1306038668-1852031137-4131532256","theme":null,"visibility":"Public","ODataType":"#microsoft.graph.group","pObjectId":"5075b7f0-918c-4dd8-a1c0-636ee02d42f6","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"de73a355-256d-495a-8a7a-38ba8dfa53ea","deletedDateTime":null,"classification":null,"createdDateTime":"2021-08-11T21:06:04Z","description":"Archimedes PPETesting from MGDC","displayName":"Archimedes-PPETest","expirationDateTime":null,"groupTypes":["Unified"],"isAssignableToRole":null,"mail":"Archimedes-PPETest@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"Archimedes-PPETest","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SPO:SPO_baf83fa9-a504-45e4-889b-9e2449c4f06d@SPO_537d6c63-efb6-4922-8643-17921eb1b0dd","SMTP:Archimedes-PPETest@contosotest4.onmicrosoft.com"],"renewedDateTime":"2021-08-11T21:06:04Z","resourceProvisioningOptions":[],"securityEnabled":false,"securityIdentifier":"S-1-12-1-3732120405-1230644589-3124263562-3931372173","theme":null,"visibility":"Private","ODataType":"#microsoft.graph.group","pObjectId":"de73a355-256d-495a-8a7a-38ba8dfa53ea","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"af7989d8-1851-4bba-9c2d-29c52cc7c104","deletedDateTime":null,"classification":null,"createdDateTime":"2019-06-08T01:04:38Z","description":null,"displayName":"DeniedUsersForPdtDvt","expirationDateTime":null,"groupTypes":["Unified"],"isAssignableToRole":null,"mail":"DeniedUsersForPdtDvt@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"DeniedUsersForPdtDvt","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SPO:SPO_3ccfe57a-fc3c-44f6-ba14-ff76267ff49a@SPO_537d6c63-efb6-4922-8643-17921eb1b0dd","SMTP:DeniedUsersForPdtDvt@contosotest4.onmicrosoft.com"],"renewedDateTime":"2019-06-08T01:04:38Z","resourceProvisioningOptions":[],"securityEnabled":true,"securityIdentifier":"S-1-12-1-2943977944-1270487121-3307810204-79808300","theme":null,"visibility":"Public","ODataType":"#microsoft.graph.group","pObjectId":"af7989d8-1851-4bba-9c2d-29c52cc7c104","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"b5bc456e-9e38-4cee-844b-7dd259c9d731","deletedDateTime":null,"classification":null,"createdDateTime":"2021-04-08T17:32:17Z","description":null,"displayName":"AllowedUsersForPDTGen2","expirationDateTime":null,"groupTypes":[],"isAssignableToRole":null,"mail":"AllowedUsersForPDTGen2@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"AllowedUsersForPDTGen2","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SMTP:AllowedUsersForPDTGen2@contosotest4.onmicrosoft.com"],"renewedDateTime":"2021-04-08T17:32:17Z","resourceProvisioningOptions":[],"securityEnabled":true,"securityIdentifier":"S-1-12-1-3049014638-1290706488-3531426692-836225369","theme":null,"visibility":null,"ODataType":"#microsoft.graph.group","pObjectId":"b5bc456e-9e38-4cee-844b-7dd259c9d731","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"c135ffcb-3760-4a35-a504-9274c42a9009","deletedDateTime":null,"classification":null,"createdDateTime":"2021-10-28T20:48:02Z","description":null,"displayName":"DeniedUsersForPdtDvtMailEnabled","expirationDateTime":null,"groupTypes":[],"isAssignableToRole":null,"mail":"DeniedUsersForPdtDvtMailEnabled@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"DeniedUsersForPdtDvtMailEnabled","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SMTP:DeniedUsersForPdtDvtMailEnabled@contosotest4.onmicrosoft.com"],"renewedDateTime":"2021-10-28T20:48:02Z","resourceProvisioningOptions":[],"securityEnabled":true,"securityIdentifier":"S-1-12-1-3241541579-1245001568-1955726501-160443076","theme":null,"visibility":null,"ODataType":"#microsoft.graph.group","pObjectId":"c135ffcb-3760-4a35-a504-9274c42a9009","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"651b347c-a8c3-4c9e-b2ec-bd258a534635","deletedDateTime":null,"classification":null,"createdDateTime":"2021-08-11T22:00:42Z","description":"Test Archimedes ODSP Dataset","displayName":"Test Archimedes ODSP Dataset","expirationDateTime":null,"groupTypes":["Unified"],"isAssignableToRole":null,"mail":"TestArchimedesODSPDataset@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"TestArchimedesODSPDataset","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SPO:SPO_94cbccb4-f936-4985-a2e5-97354ff26144@SPO_537d6c63-efb6-4922-8643-17921eb1b0dd","SMTP:TestArchimedesODSPDataset@contosotest4.onmicrosoft.com"],"renewedDateTime":"2021-08-11T22:00:42Z","resourceProvisioningOptions":[],"securityEnabled":false,"securityIdentifier":"S-1-12-1-1696281724-1285466307-633203890-893801354","theme":null,"visibility":"Private","ODataType":"#microsoft.graph.group","pObjectId":"651b347c-a8c3-4c9e-b2ec-bd258a534635","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"b133c4eb-139d-4961-ac51-7ba59575e038","deletedDateTime":null,"classification":null,"createdDateTime":"2020-07-24T21:48:49Z","description":"Denied users mail enabled sec group for pdt dvt ","displayName":"DeniedUsersGroupForPDTDvt","expirationDateTime":null,"groupTypes":[],"isAssig
nableToRole":null,"mail":null,"mailEnabled":false,"mailNickname":"f6943c53-7","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":[],"renewedDateTime":"2020-07-24T21:48:49Z","resourceProvisioningOptions":[],"securityEnabled":true,"securityIdentifier":"S-1-12-1-2972959979-1231098781-2776322476-954234261","theme":null,"visibility":null,"ODataType":"#microsoft.graph.group","pObjectId":"b133c4eb-139d-4961-ac51-7ba59575e038","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"c7953f08-559a-4cad-a3cc-02263b4d8744","deletedDateTime":null,"classification":null,"createdDateTime":"2018-06-08T04:10:43Z","description":"Test Public Group","displayName":"Test Public Group","expirationDateTime":null,"groupTypes":["Unified"],"isAssignableToRole":null,"mail":"testpublicgroup@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"testpublicgroup","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SPO:SPO_b380372d-0b1c-4cd3-b71f-1c8f9a914308@SPO_537d6c63-efb6-4922-8643-17921eb1b0dd","SMTP:testpublicgroup@contosotest4.onmicrosoft.com"],"renewedDateTime":"2018-06-08T04:10:43Z","resourceProvisioningOptions":[],"securityEnabled":false,"securityIdentifier":"S-1-12-1-3348446984-1286428058-637717667-1149717819","theme":null,"visibility":"Public","ODataType":"#microsoft.graph.group","pObjectId":"c7953f08-559a-4cad-a3cc-02263b4d8744","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
{"id":"9be41eaa-3486-44ae-b8ab-534034ea8452","deletedDateTime":null,"classification":null,"createdDateTime":"2021-04-30T21:46:26Z","description":null,"displayName":"Test-For-AdminPortal","expirationDateTime":null,"groupTypes":[],"isAssignableToRole":null,"mail":"Test-For-AdminPortal@contosotest4.onmicrosoft.com","mailEnabled":true,"mailNickname":"Test-For-AdminPortal","membershipRule":null,"membershipRuleProcessingState":null,"onPremisesDomainName":null,"onPremisesLastSyncDateTime":null,"onPremisesSyncEnabled":null,"preferredDataLocation":null,"preferredLanguage":null,"proxyAddresses":["SMTP:Test-For-AdminPortal@contosotest4.onmicrosoft.com"],"renewedDateTime":"2021-04-30T21:46:26Z","resourceProvisioningOptions":[],"securityEnabled":true,"securityIdentifier":"S-1-12-1-2615418538-1152267398-1079225272-1384442420","theme":null,"visibility":null,"ODataType":"#microsoft.graph.group","pObjectId":"9be41eaa-3486-44ae-b8ab-534034ea8452","ptenant":"537d6c63-efb6-4922-8643-17921eb1b0dd"}
```
