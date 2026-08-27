---
title: "Create case relation"
description: "Create a new external resource relation for a security case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create case relation

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a concrete external resource [relation](../resources/security-casemanagement-relation.md) for a [case](../resources/security-casemanagement-case.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_case_post_relations" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-case-post-relations-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/caseManagement/cases/{caseId}/relations
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of a concrete [microsoft.graph.security.caseManagement.relation](../resources/security-casemanagement-relation.md) object. The base **relation** type is abstract and can't be created. Include `@odata.type` with one of the following supported types:

- [incidentRelation](../resources/security-casemanagement-incidentrelation.md)
- [recommendationRelation](../resources/security-casemanagement-recommendationrelation.md)
- [workspaceIndicatorRelation](../resources/security-casemanagement-workspaceindicatorrelation.md)

The required subtype-specific properties are:

|Concrete relation type|Required subtype-specific properties|
|:---|:---|
|[incidentRelation](../resources/security-casemanagement-incidentrelation.md)|None.|
|[recommendationRelation](../resources/security-casemanagement-recommendationrelation.md)|**recommendationType**|
|[workspaceIndicatorRelation](../resources/security-casemanagement-workspaceindicatorrelation.md)|**subscriptionId**|

You can also supply the following properties as applicable to the selected concrete type.

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|The OData type of the concrete relation. The supported values are `#microsoft.graph.security.caseManagement.incidentRelation`, `#microsoft.graph.security.caseManagement.recommendationRelation`, and `#microsoft.graph.security.caseManagement.workspaceIndicatorRelation`. Required.|
|recommendationType|String|The recommendation type associated with the linked recommendation. Required for **recommendationRelation**.|
|relatedResourceId|String|The identifier of the related external resource. Optional.|
|resourceGroupName|String|The Azure resource group name. Applies to **recommendationRelation** and **workspaceIndicatorRelation**.|
|subscriptionId|String|The Azure subscription identifier. Required for **workspaceIndicatorRelation** and supported for **recommendationRelation**.|
|workspaceName|String|The Log Analytics workspace name. Applies to **workspaceIndicatorRelation**.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.caseManagement.relation](../resources/security-casemanagement-relation.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_create_case_relation"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/relations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.incidentRelation",
  "relatedResourceId": "987654321"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-casemanagement-create-case-relation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-casemanagement-create-case-relation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-casemanagement-create-case-relation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-casemanagement-create-case-relation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-casemanagement-create-case-relation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-casemanagement-create-case-relation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-casemanagement-create-case-relation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.incidentRelation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.incidentRelation",
  "id": "790478d8-6402-8452-4584-5d32e6acf31a",
  "createdDateTime": "2026-05-20T11:12:28Z",
  "createdBy": "user@contoso.com",
  "lastModifiedDateTime": "2026-05-20T11:18:45Z",
  "lastModifiedBy": "user@contoso.com",
  "relatedResourceId": "987654321"
}
```
