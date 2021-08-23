---
title: "crossTenantAccessPolicyTarget resource type"
description: "Defines how to target your cross tenant access policy settings. Settings can be targeted to specific users, groups, or applications."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# crossTenantAccessPolicyTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines how to target your cross tenant access policy settings. Settings can be targeted to specific users, groups, or applications. You can also use keywords to target specific groups or applications.

## Application Keyword list

When setting application targets, you can use the `AllMicrosoftApps` or `Office365` keyword. The `AllMicrosoftApps` keyword means any application published by Microsoft. The `Office365` keyword includes the following list of applications and their GUIDs:

| Application ID                       | DisplayName                                   |
| ------------------------------------ | --------------------------------------------- |
| 00000002-0000-0ff1-ce00-000000000000 | Office 365 Exchange Online                    |
| 0f698dd4-f011-4d23-a33e-b36416dcb1e6 | OfficeClientService                           |
| 00000003-0000-0ff1-ce00-000000000000 | Office 365 SharePoint Online                  |
| ec156f81-f23a-47bd-b16f-9fb2c66420f9 | Office 365 Exchange Microservices             |
| 394866fc-eedb-4f01-8536-3ff84b16be2a | Microsoft People Cards Service                |
| 00000004-0000-0ff1-ce00-000000000000 | Skype for Business Online                     |
| 6a9b9266-8161-4a7b-913a-a9eda19da220 | OneDrive                                      |
| cc15fd57-2c6c-4117-a88c-83b1d56b4bbe | Microsoft Teams Services                      |
| 1e70cd27-4707-4589-8ec5-9bd20c472a46 | Skype Presence Service                        |
| 4580fd1d-e5a3-4f56-9ad1-aab0e3bf8f76 | Call Recorder                                 |
| b1379a75-ce5e-4fa3-80c6-89bb39bf646c | Microsoft Teams Chat Aggregator               |
| 00000007-0000-0ff1-ce00-000000000000 | Microsoft Exchange Online Protection          |
| 4c4f550b-42b2-4a16-93f9-fdb9e01bb6ed | Targeted Messaging Service                    |
| 00000006-0000-0ff1-ce00-000000000000 | Microsoft Office 365 Portal                   |
| dcad865d-9257-4521-ad4d-bae3e137b345 | Microsoft SharePoint Online - SharePoint Home |
| 66a88757-258c-4c72-893c-3e8bed4d6899 | Office 365 Search Service                     |
| 4345a7b9-9a63-4910-a426-35363201d503 | O365 Suite UX                                 |
| 1fec8e78-bce4-4aaf-ab1b-5451cc387264 | Microsoft Teams                               |
| b97b6bd4-a49f-4a0c-af18-af507d1da76c | Office Shredding Service                      |
| 13d54852-ae25-4f0b-823a-b09eea89f431 | Outlook Service for Exchange                  |
| 2634dd23-5e5a-431c-81ca-11710d9079f4 | Microsoft Stream Service                      |
| 00000005-0000-0ff1-ce00-000000000000 | Office 365 Yammer                             |
| 475226c6-020e-4fb2-8a90-7a972cbfc1d4 | PowerApps Service                             |
| 944f0bd1-117b-4b1c-af26-804ed95e767e | Media Analysis and Transformation Service     |
| 6f82282e-0070-4e78-bc23-e6320c5fa7de | Microsoft Discovery Service                   |
| 905fcf26-4eb7-48a0-9ff0-8dcc7194b5ba | Sway                                          |
| 09abbdfd-ed23-44ee-a2d9-a627aa1c90f3 | Project Work Management                       |
| 166f1b03-5b19-416f-a94b-1d7aa2d247dc | Office Hive                                   |
| 2d4d3d8e-2be3-4bef-9f87-7875a61c29de | OneNote                                       |
| 80ccca67-54bd-44ab-8625-4b79c4dc7775 | Security & Compliance Center                  |
| 94c63fef-13a3-47bc-8074-75af8c65887a | Office Delve                                  |
| 4b233688-031c-404b-9a80-a4f3f2351f90 | Office Online                                 |
| 6204c1d1-4712-4c46-a7d9-3ed63d992682 | Microsoft Flow                                |
| c9a559d2-7aab-4f13-a6ed-e7e9c52aec87 | Microsoft Forms                               |
| a8f7a65c-f5ba-4859-b2d6-df772c264e9d | PowerApps Web                                 |
| 5754bb84-f388-44f0-b3f7-9233a05bbb34 | Microsoft To-Do Web App                       |
| cf53fce8-def6-4aeb-8d30-b158e7b1cf83 | Microsoft Stream Portal                       |
| 5e3ce6c0-2b1f-4285-8d4b-75ee78787346 | Microsoft Teams Web Client                    |
| 08e18876-6177-487e-b8b5-cf950c1e598c | SharePoint Online Web Client Extensibility    |
| e8bdeda8-b4a3-4eed-b307-5e2456238a77 | Office365 Shell SS-Server                     |
| 5f00fd34-f302-417f-81ef-1adda179d8fd | Microsoft Forms Web                           |
| ab3be6b7-f5df-413d-ac2d-abf1e3fd9c0b | Microsoft Teams Graph Service                 |
| 89bee1f7-5e6e-4d8a-9f3d-ecd601259da7 | Office365 Shell WCSS-Client                   |
| 5f09333a-842c-47da-a157-57da27fcbca5 | Office365 Shell WCSS-Server                   |
| 69cad5fa-2338-4390-aa5d-1ca1fb39860a | Connector                                     |
| 1996141e-2b07-4491-927a-5a024b335c78 | Microsoft Teams UIS                           |


## Properties

|Property|Type|Description|
|:---|:---|:---|
|target|String|The identifier (GUID) of the user, group, or application. Also supports key words: `AllUsers`, `AllGroups`, `AllApplications`.|
|targetType|crossTenantAccessPolicyTargetType|The type of resource that you want to target. Possible values are: `user`, `group`, `application`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyTarget"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyTarget",
  "target": "String",
  "targetType": "String"
}
```
