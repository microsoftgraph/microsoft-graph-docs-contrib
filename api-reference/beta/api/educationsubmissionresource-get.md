---
title: "Get educationSubmissionResource"
description: "Retrieve the properties of a specific resource associated with the submission."
author: "Sureshpadimi88"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Get educationSubmissionResource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of a specific resource associated with a [submission](../resources/educationsubmissionresource.md). Only teachers, students, and applications with application permissions can perform this operation.

This resource is in the "working" resource list and should be considered work in process by a student. This resource is wrapped with a possible pointer back to the assignment resource if it was copied from the assignment.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationsubmissionresource_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationsubmissionresource-get-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{class-id}/assignments/{assignment-id}/submissions/{submission-id}/resources/{resource-id}
```
## Optional query parameters

This method supports the `$top`, `$filter`, `$orderby`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and an [educationSubmissionResource](../resources/educationsubmissionresource.md) object in the response body.

## Examples
### Example 1: Get an educationWordResource
#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationWordResource"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources/6546fe9a-48d9-4775-8de9-cdb2b078fde4
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationwordresource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationwordresource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationwordresource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationwordresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationwordresource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationwordresource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationwordresource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationWordResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/submissions('da443246-384d-673b-32db-bdba9d7f2b51')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "6546fe9a-48d9-4775-8de9-cdb2b078fde4",
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Weekly Goals.docx",
        "createdDateTime": "2021-09-13T19:22:01.2883506Z",
        "lastModifiedDateTime": "2021-09-13T19:22:01.2883506Z",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RNQLFIXC77M7NC3CJWIPLBEO36K",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        }
    }
}
```

### Example 2: Get an educationFileResource
#### Request
The following example shows a request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationFileResource"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources/33cf3eb2-8a35-4f76-8f16-b2abc112d44f
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationfileresource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationfileresource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationfileresource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationfileresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationfileresource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationfileresource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationfileresource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationFileResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/submissions('da443246-384d-673b-32db-bdba9d7f2b51')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "33cf3eb2-8a35-4f76-8f16-b2abc112d44f",
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "displayName": "_FTP_EDC-61424749-250820211136.pdf",
        "createdDateTime": "2021-09-13T19:23:04.5049139Z",
        "lastModifiedDateTime": "2021-09-13T19:23:04.5049139Z",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RL45XVPGDBRW5FLDR62Z5TCMGG3",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        }
    }
}
```

### Example 3: Get an educationExcelResource
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationExcelResource"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources/c36626ba-9864-4f3a-8d6f-7104f62df605
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationexcelresource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationexcelresource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationexcelresource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationexcelresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationexcelresource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationexcelresource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationexcelresource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationExcelResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/submissions('da443246-384d-673b-32db-bdba9d7f2b51')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "c36626ba-9864-4f3a-8d6f-7104f62df605",
    "resource": {
        "@odata.type": "#microsoft.graph.educationExcelResource",
        "displayName": "userAgeGroup QueryParameter Test.xlsx",
        "createdDateTime": "2021-09-13T19:23:58.3925618Z",
        "lastModifiedDateTime": "2021-09-13T19:23:58.3925618Z",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RONPUDM2CZKNRF3TGHYUM7Z64WE",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        }
    }
}
```

### Example 4: Get an educationPowerPointResource
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationPowerPointResource"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources/e19bd829-17ee-4483-88d0-f62b406f367c
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationpowerpointresource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationpowerpointresource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationpowerpointresource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationpowerpointresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationpowerpointresource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationpowerpointresource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationpowerpointresource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationPowerPointResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/submissions('da443246-384d-673b-32db-bdba9d7f2b51')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "e19bd829-17ee-4483-88d0-f62b406f367c",
    "resource": {
        "@odata.type": "#microsoft.graph.educationPowerPointResource",
        "displayName": "state diagram.pptx",
        "createdDateTime": "2021-09-13T19:24:38.4706263Z",
        "lastModifiedDateTime": "2021-09-13T19:24:38.4706263Z",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RN3MHWWM7BNXJD2UD5OMRFEDKN2",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        }
    }
}
```

### Example 5: Get an educationLinkResource
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationLinkResource"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources/c9169e8f-f096-4876-8675-7dee248af635
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationlinkresource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationlinkresource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationlinkresource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationlinkresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationlinkresource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationlinkresource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationlinkresource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationLinkResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/submissions('da443246-384d-673b-32db-bdba9d7f2b51')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "c9169e8f-f096-4876-8675-7dee248af635",
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkResource",
        "displayName": "Sharpen your skills",
        "createdDateTime": "2021-09-13T22:04:24.4720369Z",
        "lastModifiedDateTime": "2021-09-13T22:04:24.4720369Z",
        "link": "https://www.codewars.com/",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        }
    }
}
```

### Example 6: Get an educationMediaResource
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationMediaResource"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources/31f2c67a-6df1-4a7f-b4c5-311fe15c873a
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationmediaresource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationmediaresource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationmediaresource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationmediaresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationmediaresource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationmediaresource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationmediaresource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationMediaResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/submissions('da443246-384d-673b-32db-bdba9d7f2b51')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "31f2c67a-6df1-4a7f-b4c5-311fe15c873a",
    "resource": {
        "@odata.type": "#microsoft.graph.educationMediaResource",
        "displayName": "category.jpg",
        "createdDateTime": "2021-09-16T19:07:59.4982929Z",
        "lastModifiedDateTime": "2021-09-16T19:07:59.4982929Z",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RK2WLKUUBAA4ZBKXNBL6QFC2TKG",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        }
    }
}
```

### Example 7: Expand dependent resources

The following example shows how to get the dependent [educationSubmissionResource](../resources/educationsubmissionresource.md) objects for a given submission resource.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "expand_dependentResources_submission",
  "sampleKeys": ["de45722a-c202-43a9-9dd5-d82c45bcef91","4d1ecd2d-c913-41ba-be3c-d896b65d09f0","fd921642-a333-4c4d-9335-2200f36400a9"]
}
-->
``` http
GET https://graph.microsoft.com/beta/education/classes/de45722a-c202-43a9-9dd5-d82c45bcef91/assignments/4d1ecd2d-c913-41ba-be3c-d896b65d09f0/submissions/fd921642-a333-4c4d-9335-2200f36400a9/resources?$expand=dependentResources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/expand-dependentresources-submission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/expand-dependentresources-submission-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/expand-dependentresources-submission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/expand-dependentresources-submission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/expand-dependentresources-submission-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/expand-dependentresources-submission-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/expand-dependentresources-submission-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmissionResource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('de45722a-c202-43a9-9dd5-d82c45bcef91')/assignments('4d1ecd2d-c913-41ba-be3c-d896b65d09f0')/submissions('fd921642-a333-4c4d-9335-2200f36400a9')/resources(dependentResources())",
  "value": [
    {
      "assignmentResourceUrl": "https://assignments.edu.cloud.microsoft/api/v1.0/edu/classes/de45722a-c202-43a9-9dd5-d82c45bcef91/assignments/4d1ecd2d-c913-41ba-be3c-d896b65d09f0/resources/ae7beedb-488d-4534-9307-3fbc2fac29b4",
      "id": "d927f453-3297-487a-8929-fa1c68f18bf3",
      "resource": {
        "@odata.type": "#microsoft.graph.educationExternalResource",
        "displayName": "A Baby Polar Bear Grows Up",
        "createdDateTime": "2025-09-23T23:29:29.9648545Z",
        "lastModifiedDateTime": "2025-09-23T23:29:29.9648776Z",
        "webUrl": null,
        "createdBy": {
          "application": null,
          "device": null,
          "user": {
            "id": "ccb65bcd-04ba-421a-8791-a299a70904b6",
            "displayName": null
          }
        },
        "lastModifiedBy": {
          "application": null,
          "device": null,
          "user": {
            "id": "ccb65bcd-04ba-421a-8791-a299a70904b6",
            "displayName": null
          }
        }
      },
      "dependentResources@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('de45722a-c202-43a9-9dd5-d82c45bcef91')/assignments('4d1ecd2d-c913-41ba-be3c-d896b65d09f0')/submissions('fd921642-a333-4c4d-9335-2200f36400a9')/resources('d927f453-3297-487a-8929-fa1c68f18bf3')/dependentResources",
      "dependentResources": [
        {
          "assignmentResourceUrl": "https://assignments.edu.cloud.microsoft/api/v1.0/edu/classes/de45722a-c202-43a9-9dd5-d82c45bcef91/assignments/4d1ecd2d-c913-41ba-be3c-d896b65d09f0/resources/090d693a-60a1-454e-8bfb-464cea5e796d",
          "id": "d92ad210-15ce-40ba-a216-11c7baffada8",
          "resource": {
            "@odata.type": "#microsoft.graph.educationExternalResource",
            "displayName": "A Baby Polar Bear Grows Up (US History)",
            "createdDateTime": "2025-09-23T23:29:29.7443913Z",
            "lastModifiedDateTime": "2025-09-23T23:29:29.9648707Z",
            "webUrl": "https://forms.office.com/Pages/AssignmentsDesignPage.aspx#TopView=Preview&FormId=kowztj5TbU-jJ5lCY3EjmSpyRd4CwqlDndXYLEW875FUQ1lPUUE2NEk0TEMzVlVNRjhGQlgwRTRPSCQlQCN0PWcu",
            "createdBy": {
              "application": null,
              "device": null,
              "user": {
                "id": "ccb65bcd-04ba-421a-8791-a299a70904b6",
                "displayName": null
              }
            },
            "lastModifiedBy": {
              "application": null,
              "device": null,
              "user": {
                "id": "ccb65bcd-04ba-421a-8791-a299a70904b6",
                "displayName": null
              }
            }
          }
        },
        {
          "assignmentResourceUrl": null,
          "id": "7b7153b4-44d8-40f9-b3de-ad2c3e04902d",
          "resource": {
            "@odata.type": "#microsoft.graph.educationMediaResource",
            "displayName": "v_618c7257-c489-4dd3-9f97-58984184a733.webm",
            "createdDateTime": "2025-09-23T23:37:31.5828888Z",
            "lastModifiedDateTime": "2025-09-23T23:37:31.5828966Z",
            "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!OttVdlohTEOX2TQZemXSranQ4OQ3V_BOoMB0C081JqWpyrOjFml8Qpy1XCbr5JBo/items/01QUVMP7NZMWMPDRSXF5C2DT4SLFS2RCUZ",
            "createdBy": {
              "application": null,
              "device": null,
              "user": {
                "id": "c0eae257-f843-4af3-a307-c698f6ac8f23",
                "displayName": null
              }
            },
            "lastModifiedBy": {
              "application": null,
              "device": null,
              "user": {
                "id": "c0eae257-f843-4af3-a307-c698f6ac8f23",
                "displayName": null
              }
            }
          }
        }
      ]
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get educationSubmissionResource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
