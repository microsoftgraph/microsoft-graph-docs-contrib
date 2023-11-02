---
title: "Get Content"
description: "Download Results of a Completed Resource"
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "viva-goals"
doc_type: apiPageType
---

# Get Content

Namespace: microsoft.graph

Download Results of a Completed Resource.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Goals-Export.Read.All|Goals-Export.ReadWrite.All|

## HTTP request
Download Results of a Completed Resource:

```http
GET /employeeExperience/goals/exportJobs/{jobId}/content
```

## Request headers
| Header       |  Value|
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a Stream object in the response body.

## Example
#### Request
Here is an example of the request.

#### Request

```text
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0/content
```

#### Response

##### State is "running"

```text
HTTP/1.1 200 OK 
Retry-After: 60
Content-type: text/csv
```

```text
{ 
  Model as EDM.Stream
} 
```
