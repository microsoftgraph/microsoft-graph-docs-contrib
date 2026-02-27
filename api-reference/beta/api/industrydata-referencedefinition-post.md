---
title: "Create referenceDefinition"
description: "Create a new referenceDefinition object."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
ms.date: 06/28/2024
---

# Create referenceDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [referenceDefinition](../resources/industrydata-referencedefinition.md) object.

**referenceDefinition** objects associate incoming data with standardized reference types values for validation.

You can extend the following reference types with other codes that better align with your source data.

|Name|ReferenceType|
|:---|:---|
| Academic Subjects      | RefAcademicSubject |
| Demographic: Race      | RefRace            |
| Demographic: Ethnicity | RefEthnicity       |
| Grade Level            | RefGradeLevel      |
| Organization Types     | RefOrgType         |
| Person Flags           | RefPersonFlagType  |

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_referencedefinition_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-referencedefinition-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /external/industryData/referenceDefinitions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [referenceDefinition](../resources/industrydata-referenceDefinition.md) object.

The following table lists the required and optional properties for creating a **referenceDefinition** object.

|Property|Type|Description|
|:---|:---|:---|
| referenceType | String  |The categorical type for a collection enumerated values. Required.                                 |
| displayName   | String  |A human-readable representation of the reference code value for display in a user interface. Optional.               |
| code          | String  |Code value for the definition. Must be unique within the referenceType. Required.                  |
| isDisabled    | Boolean |Indicates whether the definition is disabled. Required.                                      |
| sortIndex     | Int32   |The index that specifies the order in which to present the definition to the user. Must be unique within the referenceType. Required. |

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referenceDefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_referencedefinition"
}
-->
```http
POST https://graph.microsoft.com/beta/external/industryData/referenceDefinitions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.referenceDefinition",
  "referenceType": "RefGradeLevel",
  "code": "TestGrade",
  "isDisabled": false,
  "sortIndex": 300,
  "displayName": "New Test Grade Level"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-referencedefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-referencedefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-referencedefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-referencedefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-referencedefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-referencedefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-referencedefinition-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.referenceDefinition"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.referenceDefinition",
  "id": "RefGradeLevel-TestGrade",
  "referenceType": "RefGradeLevel",
  "displayName": "New Test Grade Level",
  "code": "TestGrade",
  "source": "Tenant Defined",
  "isDisabled": false,
  "sortIndex": 300,
  "createdDateTime": "2024-03-13T18:20:26.3796502Z",
  "lastModifiedDateTime": "2024-03-13T18:20:26.3796502Z"
}
```

