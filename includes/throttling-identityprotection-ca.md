---
author: "ebasseri"
ms.localizationpriority: high
ms.subservice: entra-sign-in
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

| Request type | Limit per tenant for all apps |
| ------------ | ------- |
| Any | One request per second |

| <!-- fake header--> |
|---|
| <ul><li> [riskDetection](/graph/api/resources/riskdetection) <li> [riskyUser](/graph/api/resources/riskyuser) <li> [riskyUserHistoryItem](/graph/api/resources/riskyuserhistoryitem) <li> [namedLocation](/graph/api/resources/namedlocation) <li> [countryNamedLocation](/graph/api/resources/countrynamedlocation) <li> [ipNamedLocation](/graph/api/resources/ipnamedlocation) <li> [conditionalAccessPolicy](/graph/api/resources/conditionalaccesspolicy) </ul> |

> [!NOTE]
> The resources listed earlier don't return a `Retry-After` header on `429 Too Many Requests` responses.