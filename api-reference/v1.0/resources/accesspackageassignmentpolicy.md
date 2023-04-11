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

In [Azure AD entitlement management](entitlementmanagement-overview.md), an access package assignment policy specifies the policy by which subjects can request or be assigned an access package via an access package assignment. An access package can have zero or more policies. When a request from a subject is received, the subject is matched against each policy to find the policy (if any) with **requestorSettings** that include that subject. The policy then determines whether the request requires approval, the duration of the access package assignment, and whether the assignment needs regular reviews.

To assign a user to an access package, [create an accessPackageAssignmentRequest](../api/entitlementmanagement-post-assignmentrequests.md) which references the access package and access package assignment policy.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessPackageAssignmentPolicies](../api/entitlementmanagement-list-assignmentpolicies.md)|[accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) collection|Get a list of the [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) objects and their properties.|
|[Create accessPackageAssignmentPolicy](../api/entitlementmanagement-post-assignmentpolicies.md)|[accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md)|Create a new [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object.|
|[Get accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-get.md)|[accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md)|Read the properties and relationships of an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object.|
|[Update accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-update.md)|[accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md)|Update the properties of an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object.|
|[Delete accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-delete.md)|None|Deletes an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedTargetScope|allowedTargetScope|Principals that can be assigned the access package through this policy. The possible values are: `notSpecified`, `specificDirectoryUsers`, `specificConnectedOrganizationUsers`, `specificDirectoryServicePrincipals`, `allMemberUsers`, `allDirectoryUsers`, `allDirectoryServicePrincipals`, `allConfiguredConnectedOrganizationUsers`, `allExternalUsers`, `unknownFutureValue`.|
|automaticRequestSettings|[accessPackageAutomaticRequestSettings](../resources/accessPackageAutomaticRequestSettings.md)|This property is only present for an auto assignment policy; if absent, this is a request-based policy.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|The description of the policy.|
|displayName|String|The display name of the policy.|
|expiration|[expirationPattern](../resources/expirationpattern.md)|The expiration date for assignments created in this policy.|
|id|String|Read only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|requestApprovalSettings|[accessPackageAssignmentApprovalSettings](../resources/accesspackageassignmentapprovalsettings.md)|Specifies the settings for approval of requests for an access package assignment through this policy. For example, if approval is required for new requests.|
|requestorSettings|[accessPackageAssignmentRequestorSettings](../resources/accesspackageassignmentrequestorsettings.md)|Provides additional settings to select who can create a request for an access package assignment through this policy, and what they can include in their request.|
|reviewSettings|[accessPackageAssignmentReviewSettings](../resources/accesspackageassignmentreviewsettings.md)|Settings for access reviews of assignments through this policy.|
|specificAllowedTargets|[subjectSet](../resources/subjectset.md) collection|The principals that can be assigned access from an access package through this policy.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackage|[accessPackage](../resources/accesspackage.md)|Access package containing this policy. Read-only. |
|catalog|[accessPackageCatalog](../resources/accesspackagecatalog.md)|Catalog of the access package containing this policy. Read-only.|
|questions|[accessPackageQuestion](../resources/accesspackagequestion.md) collection|Questions that are posed to the  requestor.|

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
  "allowedTargetScope": "String",
  "automaticRequestSettings": {
    "@odata.type": "microsoft.graph.accessPackageAutomaticRequestSettings"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "expiration": {
    "@odata.type": "microsoft.graph.expirationPattern"
  },
  "id": "String (identifier)",
  "modifiedDateTime": "String (timestamp)",
  "requestorSettings": {
    "@odata.type": "microsoft.graph.accessPackageAssignmentRequestorSettings"
  },
  "questions": [
    {
      "@odata.type": "microsoft.graph.accessPackageQuestion"
    }
  ],
  "requestApprovalSettings": {
    "@odata.type": "microsoft.graph.accessPackageAssignmentApprovalSettings"
  },
  "reviewSettings": {
    "@odata.type": "microsoft.graph.accessPackageAssignmentReviewSettings"
  },
  "specificAllowedTargets": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ]
 
}
```


