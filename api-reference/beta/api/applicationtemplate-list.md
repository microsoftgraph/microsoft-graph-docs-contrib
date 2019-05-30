---
title: "List applicationTemplates"
description: "Retrieve a list of applicationtemplate objects."
localization_priority: Normal
author: "luleonpla"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# List applicationTemplates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of applicationtemplate objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | None. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | None. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /applicationTemplates
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData Query Parameters](/graph/query-parameters)

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [applicationTemplate](../resources/applicationtemplate.md) objects in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_applicationtemplates"
}-->

```http
GET https://graph.microsoft.com/beta/applicationTemplates
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.applicationTemplate",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id" : "006a06ef-9160-42cd-88bf-17a7588fc844",
      "displayName" : "LinkedIn Lookup",
      "homePageUrl" : "www.linkedin.com",
      "supportedSingleSignOnModes" : ["SAML", "Password"],
      "logoUrl" : "https://images.microsoft.com",
      "categories" : ["collaboration", "social"],
      "publisher" : "LinkedIn",
      "description" : "LinkedIn Lookup is the easiest way to find coworkers and teams at your company. Lookup is a new people search tool that combines employees\u00e2\u20ac\u2122 LinkedIn profile information and Active Directory information, allowing you to quickly find and contact your coworkers, on desktop or mobile. Requires an existing Lookup company subscription."
    }, ...]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List applicationTemplates",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->