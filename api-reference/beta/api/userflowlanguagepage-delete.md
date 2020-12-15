---
title: "Delete userFlowLanguagePage"
description: "Deletes the values in an userFlowLanguagePage object. You may only delete the values in an overridesPage, which is used to customize the values shown to a user during a user journey defined by a user flow."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Delete userFlowLanguagePage

Namespace: microsoft.graph

Deletes the values in an [userFlowLanguagePage](../resources/userflowlanguagepage.md) object. You may only delete the values in an overridesPage, which is used to customize the values shown to a user during a user journey defined by a user flow.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityUserFlow.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|IdentityUserFlow.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* External Identity User Flow administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
DELETE /identity/b2cUserFlows/{id}/languages/{id}/overridesPages/$value
DELETE /identity/b2xUserFlows/{id}/languages/{id}/overridesPages/$value
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "delete_userflowlanguagepage"
}
-->

``` http
DELETE https://graph.microsoft.com/beta/identity/b2cUserFlows/B2C_1_Customer/languages/en/overridesPages/$value
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
