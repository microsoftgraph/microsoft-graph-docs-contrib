---
title: "Microsoft Graph Data Connect GroupMembers_v0 dataset"
description: "Use the GroupMembers_v0 dataset to generate a list of direct members of all groups."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
ms.custom: datasets:dataset-name
---

# Microsoft Graph Data Connect GroupMembers_v0 dataset

## Description

The GroupMembers_v0 dataset generates a list of direct members of all groups. A group can have users, organizational contacts, devices, service principals and other groups as members. 

## Scenarios

- Generate a list of the members of a group.
- Determine whether a user is a member of a group.

## Questions

- How many members are part of a particular group?
- Who are the members of a group?

## Joining with other datasets

The GroupMembers_v0 dataset can be joined with the GroupDetails_v0 and GroupOwners_v0 datasets.

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
| id |	string |	The unique identifier for the members of the group. |	No |	None |
| userPrincipalName |	string |	SMTP address of the members of the group. |	No |	None |
| displayName |	string |	The display name for the members of the group. |	No |	None |
| ODataType	| string |	Data type of the current folder. |	No |	None |
| pObjectId	| string |	Object id. |	No |	None |
| ptenant	| string |	Tenant id. |	No |	None |

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
{"id":"e530bf91-e844-4369-a808-e0d12b1008cd","userPrincipalName":"contosouser21@contosotest21.onmicrosoft.com","displayName":"FirstName LastName","ODataType":"#microsoft.graph.user","puser":"18960c5f-4e96-4331-afbb-aa2847a86aa9","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"e530bf91-e844-4369-a808-e0d12b1008cd","userPrincipalName":"contosouser21@contosotest21.onmicrosoft.com","displayName":"FirstName LastName","ODataType":"#microsoft.graph.user","puser":"3fa22575-59ae-456a-8634-2950aa2070cc","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"e530bf91-e844-4369-a808-e0d12b1008cd","userPrincipalName":"contosouser21@contosotest21.onmicrosoft.com","displayName":"FirstName LastName","ODataType":"#microsoft.graph.user","puser":"70e5cb7e-7d9f-43ad-a007-2267409b7ce4","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"e530bf91-e844-4369-a808-e0d12b1008cd","userPrincipalName":"contosouser21@contosotest21.onmicrosoft.com","displayName":"FirstName LastName","ODataType":"#microsoft.graph.user","puser":"964dc001-843c-4939-82a5-03b5da3e5a93","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"e530bf91-e844-4369-a808-e0d12b1008cd","userPrincipalName":"contosouser21@contosotest21.onmicrosoft.com","displayName":"FirstName LastName","ODataType":"#microsoft.graph.user","puser":"b5dca0c8-3d64-484e-8768-adda95bd2585","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"7bf2eacd-2037-43fa-8453-1547a8f81a24","userPrincipalName":"Casey.West@contosotest21.onmicrosoft.com","displayName":"Casey West","ODataType":"#microsoft.graph.user","puser":"e30567fc-fcbf-47fe-b73e-c15489ca65b7","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"fdfabbfe-daa3-466d-995d-71e7d0931a49","userPrincipalName":"Beth.Byers@contosotest21.onmicrosoft.com","displayName":"Beth Byers","ODataType":"#microsoft.graph.user","puser":"e30567fc-fcbf-47fe-b73e-c15489ca65b7","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"3e703255-3982-48aa-b4e5-713dcbdb1b6e","userPrincipalName":"Dena.Castro@contosotest21.onmicrosoft.com","displayName":"Dena Castro","ODataType":"#microsoft.graph.user","puser":"e30567fc-fcbf-47fe-b73e-c15489ca65b7","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
```
