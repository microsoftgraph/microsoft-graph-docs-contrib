---
title: "adminConsentRequestPolicy resource type"
description: "Represents the policy for enabling or disabling the Azure AD admin consent workflow."
author: "eringreenlee"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# adminConsentRequestPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy for enabling or disabling the Azure AD admin consent workflow. The admin consent workflow allows users to request access for apps that they wish to use and that require admin authorization before users can use the apps to access organizational data. There is a single **adminConsentRequestPolicy** per tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get adminConsentRequestPolicy](../api/adminconsentrequestpolicy-get.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|Read the properties and relationships of an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.|
|[Update adminConsentRequestPolicy](../api/adminconsentrequestpolicy-update.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|Update the properties of an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Specifies whether the admin consent request feature is enabled or disabled. Required.|
|notifyReviewers|Boolean|Specifies whether reviewers will receive notifications. Required.|
|remindersEnabled|Boolean|Specifies whether reviewers will receive reminder emails. Required.|
|requestDurationInDays|Int32|Specifies the duration the request is active before it automatically expires if no decision is applied.|
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|Required.|
|version|Int32|Specifies the version of this policy. When the policy is updated, this version is updated. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adminConsentRequestPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminConsentRequestPolicy",
  "isEnabled": "Boolean",
  "version": "Integer",
  "notifyReviewers": "Boolean",
  "remindersEnabled": "Boolean",
  "requestDurationInDays": "Integer",
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ]
}
```
