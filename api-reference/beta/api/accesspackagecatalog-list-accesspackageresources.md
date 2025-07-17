---
title: "List accessPackageResources"
description: "Retrieve a list of accessPackageResource objects in an accessPackageCatalog."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 11/20/2024
---

# List accessPackageResources

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [accessPackageResource](../resources/accesspackageresource.md) objects in an [accessPackageCatalog](../resources/accesspackagecatalog.md).  To request to add or remove an [accessPackageResource](../resources/accesspackageresource.md), use [create accessPackageResourceRequest](entitlementmanagement-post-accesspackageresourcerequests.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackagecatalog_list_accesspackageresources" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackagecatalog-list-accesspackageresources-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-reader](../includes/rbac-for-apis/rbac-entitlement-management-catalog-reader-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identityGovernance/entitlementManagement/accessPackageCatalogs/{id}/accessPackageResources
```

## Optional query parameters

This method supports OData query parameters to help customize the response. For example, to retrieve the access package resource scopes and environments for each resource, include `$expand=accessPackageResourceScopes,accessPackageResourceEnvironment` in the query. To retrieve the available roles of a resource, include `$expand=accessPackageResourceRoles`. To retrieve only resources for applications and not groups or sites, include `$filter=resourceType eq 'Application'` in the query. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageResource](../resources/accesspackageresource.md) objects in the response body.

## Examples

### Request

The following is an example of the request, using a filter to select resources of a particular type and `$expand` to return resource scopes of each resource.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_accesspackageresources"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/{id}/accessPackageResources?$filter=resourceType eq 'Application'&$expand=accessPackageResourceScopes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-accesspackageresources-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-accesspackageresources-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-accesspackageresources-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-accesspackageresources-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-accesspackageresources-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-accesspackageresources-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-accesspackageresources-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-accesspackageresources-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResource",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "400279ff-8e85-4dcf-b1d6-d3a6be372951",
      "displayName": "Faculty cafeteria ordering",
      "description": "Example application",
      "url": "https://myapps.microsoft.com/example.com/signin/Faculty%20cafeteria%20ordering/f1e3b407-942d-4934-9a3f-cef1975cb988/",
      "resourceType": "Application",
      "originId": "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e",
      "accessPackageResourceScopes": [
          {
              "id": "452d78a7-69a5-482d-a82f-859a5169c55e",
              "displayName": "Root",
              "description": "Root Scope",
              "originId": "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e",
              "originSystem": "AadApplication",
              "isRootScope": true
          }
      ],
      "attributes": [
          {
              "id": "4f28e638-93de-4152-b631-2135da14c94a",
              "attributeName": "country",
              "attributeDefaultValue": null,
              "isEditable": true,
              "isPersistedOnAssignmentRemoval": false,
              "attributeSource": {
                  "@odata.type": "#microsoft.graph.resourceAttributeQuestion",
                  "question": {
                      "@odata.type": "#microsoft.graph.accessPackageMultipleChoiceQuestion",
                      "id": "6c797e12-e608-4ac9-90da-a8f18df37a94",
                      "isRequired": false,
                      "isAnswerEditable": null,
                      "sequence": 0,
                      "allowsMultipleSelection": false,
                      "text": {
                          "defaultText": "Enter your country",
                          "localizedTexts": []
                      },
                      "choices": [
                          {
                              "actualValue": "USA",
                              "displayValue": {
                                  "defaultText": "USA",
                                  "localizedTexts": [
                                      {
                                          "text": "USA",
                                          "languageCode": "en-US"
                                      }
                                  ]
                              }
                          },
                          {
                              "actualValue": "Canada",
                              "displayValue": {
                                  "defaultText": "Canada",
                                  "localizedTexts": [
                                      {
                                          "text": "Canada",
                                          "languageCode": "en-US"
                                      }
                                  ]
                              }
                          },
                          {
                              "actualValue": "India",
                              "displayValue": {
                                  "defaultText": "India",
                                  "localizedTexts": [
                                      {
                                          "text": "English",
                                          "languageCode": "en-US"
                                      }
                                  ]
                              }
                          }
                      ]
                  }
              },
              "attributeDestination": {
                  "@odata.type": "#microsoft.graph.userDirectoryAttributeStore"
              }
          }
      ]
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List accessPackageResources",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
