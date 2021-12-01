---
title: "accessPackageAssignmentPolicy resource type"
description: "An access package assignment policy specifies the policy by which subjects may request or be assigned an access package via an access package assignment."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# accessPackageAssignmentPolicy resource type

Namespace: microsoft.graph

In [Azure AD entitlement management](entitlementmanagement-root.md), an access package assignment policy specifies the policy by which subjects can request or be assigned an access package via an access package assignment. An access package can have zero or more policies. When a request from a subject is received, the subject is matched against each policy to find the policy (if any) with requestorSettings that include that subject. The policy then determines whether the request requires approval, the duration of the access package assignment, and whether the assignment needs regular reviews.

To assign a user to an access package, [create an accessPackageAssignmentRequest](../api/entitlementmanagement-post-assignmentrequests.md) which references the access package and access package assignment policy.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessPackageAssignmentPolicies](../api/accesspackageassignmentpolicy-list.md)|[accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) collection|Retrieve a list of accessPackageAssignmentPolicy objects. |
|[Get accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-get.md)|[accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md)|Read properties and relationships of an accessPackageAssignmentPolicy object. |
|[Update accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-update.md)|[accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md)|Update the properties of an accessPackageAssignmentPolicy object. |
|[Delete accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-delete.md)||Delete an accessPackageAssignmentPolicy. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedTargetScope|allowedTargetScope|Who is allowed to request the access package through this policy. The possible values are: `notSpecified`, `specificDirectoryUsers`, `specificConnectedOrganizationUsers`, `specificDirectoryServicePrincipals`, `allMemberUsers`, `allDirectoryUsers`, `allDirectoryServicePrincipals`, `allConfiguredConnectedOrganizationUsers`, `allExternalUsers`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|The description of the policy.|
|displayName|String|The display name of the policy.|
|expiration|[expirationPattern](../resources/expirationpattern.md)|The expiration date for assignments created in this policy.|
|id|String|Read only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|requestApprovalSettings|[accessPackageAssignmentApprovalSettings](../resources/accesspackageassignmentapprovalsettings.md)|Who must approve requests for access package in this policy.|
|requestorSettings|[accessPackageAssignmentRequestorSettings](../resources/accesspackageassignmentrequestorsettings.md)|Who can request this access package from this policy.|
|specificAllowedTargets|[subjectSet](../resources/subjectset.md) collection|The targets for being assigned access from an access package from this policy.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackage|[accessPackage](../resources/accesspackage.md)|Access package containing this policy. Read-only. |
|catalog|[accessPackageCatalog](../resources/accesspackagecatalog.md)|Catalog of access package containing this policy. Read-only.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "allowedTargetScope": "String",
  "specificAllowedTargets": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
  "expiration": {
    "@odata.type": "microsoft.graph.expirationPattern"
  },
  "requestorSettings": {
    "@odata.type": "microsoft.graph.accessPackageAssignmentRequestorSettings"
  },
  "requestApprovalSettings": {
    "@odata.type": "microsoft.graph.accessPackageAssignmentApprovalSettings"
  },
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)"
}
```


