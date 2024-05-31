---
title: "Create referenceDefinition"
description: "Create a new referenceDefinition object."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# Create referenceDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) object.

**referenceDefinitions** are used throughout the system. **referenceDefinitions** are used to validate incoming data based on corresponding data types that are being associated.

We're allowing the ability to extend and manage specific data types.

|Name|ReferenceValue|
|:---|:---|
| Academic Subjects      | RefAcademicSubject |
| Demographic: Race      | RefRace            |
| Demographic: Ethnicity | RefEthnicity       |
| Grade Level            | RefGradeLevel      |
| Organization Types     | RefOrgType         |
| Person Flags           | RefPersonFlagType  |

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-referencedefinition-post-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-referencedefinition-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /external/industryData/referenceDefinitions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referenceDefinition.md) object.

You can specify the following properties when you create an **referenceDefinition**.

|Property|Type|Description|
|:---|:---|:---|
| referenceType | String  |The categorical type for a collection enumerated values. Required.                                 |
| displayName   | String  |Human-readable representation of the Code for display in a user interface. Optional.               |
| code          | String  |Code value for the definition. Must be unique within the referenceType. Required.                  |
| isDisabled    | Boolean |Indicates whether the definition has been disabled. Required.                                      |
| sortIndex     | Int32   |Ordering index to present the definitions within a type consistently in user interfaces. Required. |

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referenceDefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_referencedefinition"
}
-->
``` http
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

