---
title: "fileUploadSession resource type"
description: "Represents the file upload session that contains details about the session and container."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# fileUploadSession resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the file upload session that contains details about the session and container.

The [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) uses CSV files uploaded to a secure container that lives only for a finite period of time and is created by calling [azureDataLakeConnector: getUploadSession](../api/industrydata-azuredatalakeconnector-getuploadsession.md). You can then upload the required CSV files to the provided shared access signature (SAS) URI in **sessionUri**.

## Properties

| Property                    | Type           | Description                                               |
| :-------------------------- | :------------- | :-------------------------------------------------------- |
| containerExpirationDateTime | DateTimeOffset | The expiration date and time for the container. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.          |
| containerId                 | String         | The container ID where the files are uploaded.            |
| sessionExpirationDateTime   | DateTimeOffset | The expiration date and time for the file upload session. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| sessionUrl                  | String         | The Azure Storage SAS URI to upload source files to.      |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.fileUploadSession"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.fileUploadSession",
  "containerExpirationDateTime": "String (timestamp)",
  "containerId": "String",
  "sessionExpirationDateTime": "String (timestamp)",
  "sessionUrl": "String"
}
```
