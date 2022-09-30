---
title: "Microsoft Graph connectors SDK (preview) contracts ConnectorInfo API and models"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
description: "Learn about the Microsoft Graph connectors SDK (preview) contracts ConnectorInfo API and models."
---

# Microsoft Graph connectors SDK (preview) ConnectorInfo API and models

The Microsoft Graph connectors SDK (preview) contracts **ConnectorInfo** API allows you to get information about the connector.

## ConnectorInfo API

|Method |Parameters |Return Type |Description |
|:----------|:-------------|:----------|:-------------|
|GetBasicConnectorInfo |[GetBasicConnectorInfoRequest](#getbasicconnectorinforequest) |[GetBasicConnectorInfoResponse](#getbasicconnectorinforesponse) |Gets basic information about the connector. Used by the platform to fetch the unique connector ID. |
|HealthCheck |[HealthCheckRequest](#healthcheckrequest) |[HealthCheckResponse](#healthcheckresponse) |Checks communication from the platform to the connector server. |

## ConnectorInfo API models

The following sections describe the ConnectorInfo API models.

### GetBasicConnectorInfoResponse

Response model that holds basic connector information.

|Property |Type |Description |
|:----------|:-------------|:----------|
|connectorId |String  |Unique identifier and GUID for the connector. |

### GetBasicConnectorInfoRequest

Request model to retrieve basic connector information. This model doesn't have any properties; properties might be added in the future as required.

### HealthCheckRequest

Request model for the **HealthCheck** API. This model doesn't have any properties; properties might be added in the future as required.

### HealthCheckResponse

Response model for the **HealthCheck** API. This model doesn't have any properties; properties might be added in the future as required.
