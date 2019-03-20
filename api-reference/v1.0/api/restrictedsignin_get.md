---
title: "Get restrictedSignIn | Microsoft Graph"
description: "Describes the get method of the restrictedSignIn resource (entity) from the Microsoft Graph API (v1.0 version)."
localization_priority: Normal
author: "lleonard-msft"
ms.prod: "microsoft-identity-platform"
---

# Get restrictedSignIn

Provides a list of sign-ins based on tenant restrictions. Tenant Restrictions enable organizations to control access to web apps, based on the Azure AD tenant the app uses for single sign-on.  

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AuditLog.Read.All |
|Delegated (personal Microsoft account) | Not supported   |
|Application | AuditLog.Read.All | 

In addition, apps must be [properly registered](https://docs.microsoft.com/azure/active-directory/active-directory-reporting-api-prerequisites-azure-portal) to Azure AD.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /restrictedSignIns
```

## Optional query parameters

This method supports OData Query Parameters to help customize the response. Check [OData Query Parameters](/graph/query_parameters.md) for how to use these parameters.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [restrictedSignIn](../resources/restrictedsignin.md) object in the response body.

## Example

### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_restrictedsignin"
}-->
```http
GET https://graph.microsoft.com/beta/restrictedsignsns
```
### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.restrictedSignIn"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 46

{
  "targetTenantId": "targetTenantId-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get restrictedSignIn",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->