---
title: "Get exportJob Content"
description: "Download the content of a successfully completed exportJob resource."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "viva-goals"
doc_type: apiPageType
---

# Get Content

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Download the content of a successfully completed [exportJob](../resources/exportjob.md) resource.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Goals-Export.Read.All|Goals-Export.ReadWrite.All|

## HTTP request

```http
GET /employeeExperience/goals/exportJobs/{jobId}/content
```

## Optional query parameters

Not supported.

## Request headers
| Name          | Description   |
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a Stream object in the response body.

## Example

### Request

Following is an example of a request.

``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0/content
```

### Response

Following is an example of the response.

``` http
HTTP/1.1 200 OK 
Content-type: text/csv

{ 
  Model as EDM.Stream
} 
```

## See also

### ExportJob Content and Field Configurations for Delegated Users
The exportJob content is the content that comes from the explorerView. If the delegated user set field to do an export using the web app then those field configurations are honored in the export process as well.