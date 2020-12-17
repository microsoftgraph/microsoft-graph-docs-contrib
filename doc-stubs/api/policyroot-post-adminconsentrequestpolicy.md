---
title: "Create adminConsentRequestPolicy"
description: "Create a new adminConsentRequestPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create adminConsentRequestPolicy
Namespace: microsoft.graph

Create a new adminConsentRequestPolicy object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policyRoot/adminConsentRequestPolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.

The following table shows the properties that are required when you create the [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|**TODO: Add Description**|
|version|Int32|**TODO: Add Description**|
|notifyReviewers|Boolean|**TODO: Add Description**|
|remindersEnabled|Boolean|**TODO: Add Description**|
|requestDurationInDays|Int32|**TODO: Add Description**|
|reviewers|[accessReviewScope](../resources/accessreviewscope.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_adminconsentrequestpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/policyRoot/adminConsentRequestPolicy
Content-Type: application/json
Content-length: 321

{
  "@odata.type": "#microsoft.graph.adminConsentRequestPolicy",
  "isEnabled": "Boolean",
  "version": "Integer",
  "notifyReviewers": "Boolean",
  "remindersEnabled": "Boolean",
  "requestDurationInDays": "Integer",
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ]
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.adminConsentRequestPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.adminConsentRequestPolicy",
  "isEnabled": "Boolean",
  "version": "Integer",
  "notifyReviewers": "Boolean",
  "remindersEnabled": "Boolean",
  "requestDurationInDays": "Integer",
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ]
}
```

