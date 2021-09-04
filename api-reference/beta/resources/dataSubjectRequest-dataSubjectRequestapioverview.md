---
title: "Use the Microsoft Graph Data subject request API"
description: "The Microsoft 365 data subject request APIs provide functionality for organizations to automate repetitive tasks and integrate with their existing data subject request tools to build a repeatable workflows that might be required based on industry regulations. You can use the Data subject request APIs to help with your legal needs."
ms.localizationpriority: medium
author: "skadam-msft"
ms.prod: "Privacy Management"
doc_type: conceptualPageType
---

# Use the Microsoft Graph Data Subject Request API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph APIs for Data subject request provide functionality for organizations to automate repetitive tasks and integrate with their existing data subject request tools to build repeatable workflows that might be required based on industry regulations. You can use the data subject request APIs to help with your legal needs.

> [!IMPORTANT]
> The Microsoft Graph APIs for eDiscovery are intended for the use of eDiscovery operations for litigation, investigation, and regulatory requests. These APIs should not be used as a substitute for journaling data out of the Microsoft 365 system or any other mass download.

> [!NOTE]
> During the preview, usage of these APIs may require subscriptions to specific Microsoft offerings and is subject to the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use?context=graph%252fcontext).  Upon general availability, Microsoft may require you or your customer to pay additional fees.
>
> 

The Data subject request API is defined in the OData subnamespace, microsoft.graph. The API includes the following key entities.

| Name | Type       | Use case |
|:-|:-|:-|
| Data Subject Request | [microsoft.graph.datasubjectrequest](datasubjectrequest.md) | Data subject request is a formal request by a data subject to a controller to take an action on their personal data. |
| Data Subject | [microsoft.graph.datasubject](datasubject.md) | Contains information related to the subject of a content search. |
| Data Subject History | [microsoft.graph.datasubjectrequesthistory](datasubjectrequesthistory.md) | Represents the history for a data subject request. |
| Data Subject Request Detail | [microsoft.graph.dataSubjectRequestDetail](dataSubjectRequestDetail.md) | Represents the details of a data subject request, including number of items found, number of items reviewed, and so on. |
| Data Subject Request Stage Detail | [microsoft.graph.dataSubjectRequestStageDetail](dataSubjectRequestStageDetail.md) | Represents the properties of the stages of a data subject request. |



