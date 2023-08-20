---
title: "Microsoft Graph Data Connect GroupOwners_v0 dataset"
description: "Use the GroupOwners_v0 dataset to retrieve the list of all the group owners."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
ms.custom: datasets:dataset-name
---

# Microsoft Graph Data Connect GroupOwners_v0 dataset

The GroupOwners_v0 dataset retrieves the list of all the group owners. The owners are a set of users or service principals who are allowed to modify the group object. Owners are currently not available in Microsoft Graph for groups that were created in Microsoft Exchange or groups that are synchronized from an on-premises environment.

## Scenarios

The following are business scenarios that you can answer with this dataset:

- Genterate a list of all the group owners to generate and analyze group related insights.
- Generate analytics for group owners created by all the groups based on creation date.
- Access the names of all the group owners existing for a tenant.

## Questions

The following are examples of questions that you can answer with this dataset:

- Which users of the tenant are group owners?
- How many group owners are there in a tenant?

## Joining with other datasets

The GroupOwners_v0 dataset can be joined with the GroupDetails_v0 and GroupMembers_v0 datasets.

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
| id |	string |	The unique identifier for the owner of the group. |	No |	None |
| userPrincipalName |	string |	SMTP address of the owner of the group.	|	No |	None |
| displayName	 | string |	The display name for the owner of the group.	|	No |	None |
| ODataType |	string |	Data type of the current folder.	|	No |	None |
| pObjectId | 	string |	Object id.	|	No |	None |
| ptenant	| string |	Tenant id.	|	No |	None |

## JSON representation

```json
{
"id": "String (identifier)",
"userPrincipalName": "String",
"displayName": "String",
"ODataType": "#microsoft.graph.user",
"pObjectId": "String",
"ptenant": "String (identifier)"
}
```

## Sample 

```json 
{"id":"e530bf91-e844-4369-a808-e0d12b1008cd","userPrincipalName":"contosouser21@contosotest21.onmicrosoft.com","displayName":"FirstName LastName","ODataType":"#microsoft.graph.user","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"b8f4387c-86aa-4c5b-af2f-098029e18f78","userPrincipalName":"Valerie.Wade@contosotest21.onmicrosoft.com","displayName":"Valerie Wade","ODataType":"#microsoft.graph.user","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"b33586ef-eb85-4bb0-a12e-65462bf19b4f","userPrincipalName":"Winnie.Davidson@contosotest21.onmicrosoft.com","displayName":"Winnie Davidson","ODataType":"#microsoft.graph.user","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"6176f40c-2b50-45aa-9c9f-bddc68672f2a","userPrincipalName":"testfirstlast2@contosotest21.onmicrosoft.com","displayName":"TestFirst2 TestLast2","ODataType":"#microsoft.graph.user","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"4f0c21f3-cca1-4dc3-b0d6-5751cc116ddc","userPrincipalName":"test1test1@contosotest21.onmicrosoft.com","displayName":"Test1 Test1","ODataType":"#microsoft.graph.user","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"5f338eb0-ee84-4811-9ccb-0dbc3e0ee681","userPrincipalName":"test2test2@contosotest21.onmicrosoft.com","displayName":"Test2 Test2","ODataType":"#microsoft.graph.user","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"e530bf91-e844-4369-a808-e0d12b1008cd","userPrincipalName":"contosouser21@contosotest21.onmicrosoft.com","displayName":"FirstName LastName","ODataType":"#microsoft.graph.user","pObjectId":"95b116e3-2d52-4503-bfc9-09ad4985a967","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"e530bf91-e844-4369-a808-e0d12b1008cd","userPrincipalName":"contosouser21@contosotest21.onmicrosoft.com","displayName":"FirstName LastName","ODataType":"#microsoft.graph.user","pObjectId":"966b082a-5c4d-4de7-b14a-9c145ec8ed69","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"e530bf91-e844-4369-a808-e0d12b1008cd","userPrincipalName":"contosouser21@contosotest21.onmicrosoft.com","displayName":"FirstName LastName","ODataType":"#microsoft.graph.user","pObjectId":"9b97ca6e-d0c0-4a84-b0aa-753695e8c1f2","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"e530bf91-e844-4369-a808-e0d12b1008cd","userPrincipalName":"contosouser21@contosotest21.onmicrosoft.com","displayName"
:"FirstName LastName","ODataType":"#microsoft.graph.user","pObjectId":"9d96497a-4197-4c03-8809-4fa46dffd9e6","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
```
