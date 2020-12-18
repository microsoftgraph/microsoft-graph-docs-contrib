---
title: "Update adminConsentRequestPolicy"
description: "Update the properties of an adminConsentRequestPolicy object."
author: ""
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update adminConsentRequestPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.ConsentRequest |
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

The work or school account must be a *Global administrator* of the tenant.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /policies/adminConsentRequestPolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.

The following table shows the properties that are required when you update the [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether the admin consent policy is enabled or disabled.<br>Note: this flag manages the policy, while the directory settings flag **EnableAdminConsentRequests** determines if users are shown the prompt to request access. The directory settings flag **EnableAdminConsentRequests** must be set to `true`.|
|notifyReviewers|Boolean|Indicates whether reminder emails to reviewers is enabled or disabled. |
|remindersEnabled|Boolean|Indicates whether reminder emails to reviewers is enabled or disabled. |
|requestDurationInDays|Int32|Specifies the duration of the request. |
|reviewers|[accessReviewScope](../resources/accessreviewscope.md) collection|Contains the list of reviewers for admin consent. |



## Response

If successful, this method returns a `204 No content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_adminconsentrequestpolicy"
}
-->
``` http
PUT https://graph.microsoft.com/beta/policies/adminConsentRequestPolicy
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.adminConsentRequestPolicy",
  "isEnabled": true,
  "notifyReviewers": true,
  "remindersEnabled": true,
  "requestDurationInDays": 15,
  "reviewers": [
    {
      "query": "/users/02b7b641-2c01-4bd4-bd5e-8ec618a9fbfd",
      "queryType": "MicrosoftGraph"
    }
  ]
}
```


### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: text/plain
```

