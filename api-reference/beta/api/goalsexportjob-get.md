---
title: "Get goalsExportJob"
description: "Get the properties of a goalsExportJob object in a Viva Goals organization."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "employee-goals"
doc_type: apiPageType
ms.topic: reference
---

# Get goalsExportJob
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of a [goalsExportJob](../resources/goalsexportjob.md) object in a Viva Goals organization.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "goalsexportjob_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/goalsexportjob-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/goals/exportJobs/{goalsExportJobId}
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For example, to select the specific properties (columns), add `$select=id,goalsOrganizationId`. 

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [goalsExportJob](../resources/goalsexportjob.md) object in the response body.

The content of the resource downloads only when the **status** of the **goalsExportJob** object is `succeeded`.

### Response headers

| Name        | Description     |
|:------------|:----------------|
|Retry-after  | Duration in seconds. Optional.|

## Examples
The following examples show how to poll a **goalsExportJob** for a Viva Goals [Explorer view](/viva/goals/explorer#default-views-in-explorer) and the different responses that are returned.

### Example 1: Status is `running`
The initial request returns a `200 OK` response code along with **Retry-After** headers.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob1"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-goalsexportjob1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-goalsexportjob1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-goalsexportjob1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-goalsexportjob1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-goalsexportjob1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-goalsexportjob1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-goalsexportjob1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.goalsExportJob"
}
-->
``` http
HTTP/1.1 200 OK
Retry-After: 60
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.goalsExportJob",
    "id": "j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0", 
    "status": "running", 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7", 
    "createdDateTime": "2023-06-19T12-06-03.0024Z", 
    "expirationDateTime": "2023-07-29T12-06-03.0024Z" 
  }
}
```

### Example 2: Status is `succeeded`

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob2"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-goalsexportjob2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-goalsexportjob2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-goalsexportjob2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-goalsexportjob2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-goalsexportjob2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-goalsexportjob2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-goalsexportjob2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.goalsExportJob"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.goalsExportJob",
    "id": "j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0", 
    "status": "succeeded", 
    "resourceLocation": "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0/content", 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7", 
    "createdDateTime": "2023-06-19T12-06-03.0024Z", 
    "expirationDateTime": "2023-07-29T12-06-03.0024Z" 
  }
}
```


### Example 3: Status is `notStarted`

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob3"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-goalsexportjob3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-goalsexportjob3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-goalsexportjob3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-goalsexportjob3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-goalsexportjob3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-goalsexportjob3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-goalsexportjob3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.goalsExportJob"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.goalsExportJob",
    "id": "j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0", 
    "status": "notStarted", 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7", 
    "createdDateTime": "2023-06-19T12-06-03.0024Z", 
    "expirationDateTime": "2023-07-29T12-06-03.0024Z" 
  }
}
```

### Example 4: Specified goalsExportJobId isn't found

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob4"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-goalsexportjob4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-goalsexportjob4-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-goalsexportjob4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-goalsexportjob4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-goalsexportjob4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-goalsexportjob4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-goalsexportjob4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.publicError"
}
-->
``` http
HTTP/1.1 404 Not Found 
Content-type: application/json

{
    "error": {
        "code": "notFound",
        "message": "Specified export job not found",
        "innerError": {
            "code": "exportJobNotFound",
            "date": "String (Timestamp)",
            "request-id": "String",
            "client-request-id": "String"
        }
    }
}
```

### Example 5: Invalid exportJobId is specified

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMj
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-goalsexportjob-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-goalsexportjob-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-goalsexportjob-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-goalsexportjob-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-goalsexportjob-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-goalsexportjob-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-goalsexportjob-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.publicError"
}
-->
``` http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "badRequest",
        "message": "Invalid JobKey specified",
        "innerError": {
            "code": "unknown",
            "date": "String (Timestamp)",
            "request-id": "String",
            "client-request-id": "String"
        }
    }
}
```

### Example 6: Get the content of a successfully completed goalsExportJob resource

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob_content"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0/content
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-goalsexportjob-content-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-goalsexportjob-content-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-goalsexportjob-content-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-goalsexportjob-content-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-goalsexportjob-content-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-goalsexportjob-content-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-goalsexportjob-content-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "@odata.type": "Edm.Stream"
}
-->
``` http
HTTP/1.1 200 OK 
Content-type: text/csv

{ 
  Model as EDM.Stream
} 
```

