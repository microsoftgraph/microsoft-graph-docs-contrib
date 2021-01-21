---
title: "adminConsentRequestPolicy resource type"
description: "Specifies the policy by which app consent requests can be created and managed for the entire tenant."
author: "Zawad"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# adminConsentRequestPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the policy by which app consent requests can be created and managed for the entire tenant. There is a single **adminConsentRequestPolicy** per tenant. 

The **adminConsentRequestPolicy** provides additional settings when creating a consent request, to control the feature behavior when starting a consent request. 

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get adminConsentRequestPolicy](../api/adminconsentrequestpolicy-get.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|Read the properties and relationships of an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.|
|[Update adminConsentRequestPolicy](../api/adminconsentrequestpolicy-update.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|Update the properties of an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether the admin consent feature is enabled or disabled. |
|notifyReviewers|Boolean|Indicates whether notification to requestors is enabled or disabled.|
|remindersEnabled|Boolean|Indicates whether reminder emails to reviewers is enabled or disabled. |
|requestDurationInDays|Int32|Specifies the duration of the request. |
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|Contains the list of reviewers for admin consent. |
|version|Int32|Specifies version updates to this policy. When the policy is updated, this version is updated. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adminConsentRequestPolicy",
  "baseType": "",
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

