---
title: "requestorSettings complex type"
description: "The requestorSettings type, used for the `requestorSettings` property of an access package assignment policy, provides additional settings to select who can create a request."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# requestorSettings complex type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The `requestorSettings` type, used for the `requestorSettings` property of an [access package assignment policy](accesspackageassignmentpolicy.md), provides additional settings to select who can create a request for an access package on that policy.

| Who can request | scopeType | allowedRequestors collection|
|:----------------|:----------|:------------------|
|No one|`NoSubjects`|empty array|
|Specific individual user in your directory|`SpecificDirectorySubjects`|[singleUser](singleuser.md)|
|Users in your directory who are members of a group|`SpecificDirectorySubjects`|[groupMembers](groupmembers.md)|
|Users in your directory with `userType` value of `member`|`AllExistingDirectoryMemberUsers`|empty array|
|Users in your directory|`AllExistingDirectorySubjects`|empty array|
|Users in specific other connected organizations already configured|`SpecificConnectedOrganizationSubjects`|[connectedOrganizationMembers](connectedorganizationmembers.md)|
|Users from any other connected organizations already configured|`AllExistingConnectedOrganizationSubjects`|empty array|
|Any user|`AllExternalSubjects`|empty array|

## Properties

This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| scopeType |String |Who can request. One of `NoSubjects`, `SpecificDirectorySubjects`, `SpecificConnectedOrganizationSubjects`, `AllExistingConnectedOrganizationSubjects`, `AllExistingDirectoryMemberUsers`, `AllExistingDirectorySubjects` or `AllExternalSubjects`.  |
| acceptRequests | Boolean | Whether new requests are accepted on this policy. |
| allowedRequestors | [userSet](userset.md) collection| The users who are allowed to request on this policy, which can be [singleUser](singleuser.md), [groupMembers](groupmembers.md), and [connectedOrganizationMembers](connectedorganizationmembers.md). |

## JSON representation


The following is a JSON representation of the requestor settings property of a policy, which allows the members of a group to request.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.requestorSettings",
  "baseType": ""
}-->

```json
{
  "scopeType": "SpecificDirectorySubjects",
  "acceptRequests": true,
  "allowedRequestors": [
       {
         "@odata.type": "#microsoft.graph.groupMembers",
         "isBackup": false,
         "id": "string (identifier)",
         "description": "Authorized requestors"
       }
   ]
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "requestorSettings complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
