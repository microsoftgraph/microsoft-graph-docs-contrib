---
title: "Create authenticationContextClassReference"
description: "Create a new authenticationContextClassReference."
ms.localizationpriority: medium
author: "calebb"
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create authenticationContextClassReference

Namespace: microsoft.graph

Create a new [authenticationContextClassReference](../resources/authenticationContextClassReference.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)                    |
|:--------------------------------------|:---------------------------------------------------------------|
|Delegated (work or school account)     | Policy.ReadWrite.ConditionalAccess |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Policy.ReadWrite.ConditionalAccess |

> [!NOTE]
> This API has a [known issue](/graph/known-issues#permissions) related to permissions.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /identity/conditionalAccess/authenticationContextClassReferences
```

## Request headers

| Name          | Description      |
|:--------------|:-----------------|
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body


You can specify the following properties when creating an **authenticationContextClassReference**.

|Property|Type|Description|
|:---|:---|:---|
| id | String|Identifier used to reference the authentication context class. The id is used to trigger step-up authentication for the referenced authentication requirements and is the value that will be issued in the `acrs` claim of an access token. This value in the claim is used to verify that the required authentication context has been satisfied. The allowed values are `c1` through `c25`. <br/> Supports `$filter` (`eq`).|
|displayName|String|The display name is the friendly name of the authenticationContextClassReference. This value should be used to identify the authentication context class reference when building user facing admin experiences. For example, selection UX.|
|description|String|A short explanation of the policies that are enforced by authenticationContextClassReference. This value should be used to provide secondary text to describe the authentication context class reference when building user facing admin experiences. For example, selection UX.|
|isAvailable|Boolean|Indicates whether the authenticationContextClassReference has been published by the security admin and is ready for use by apps. When it is set to `false` it should not be shown in authentication context selection UX, or used to protect app resources. It will be shown and available for Conditional Access policy authoring.|

## Response

If successful, this method returns a `201 Created` response code and a new [authenticationContextClassReference](../resources/authenticationcontextclassreference.md) object in the response body.

## Examples

### Request
The following example shows creating a new authenticationcontextclassreference that is available for apps to use.




# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationcontextclassreference"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/identity/conditionalAccess/authenticationContextClassReferences
Content-type: application/json

{
    "id": "c1",
    "displayName": "Contoso medium",
    "description": "Medium protection level defined for Contoso policy",
    "isAvailable": true
}



#### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.authenticationContextClassReference"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#conditionalAccess/authenticationContextClassReference/$entity",
    "id": "c1",
    "displayName": "Contoso medium",
    "description": "Medium protection level defined for Contoso policy",
    "isAvailable": true
}

```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create authenticationContextClassReference",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
