---
title: "Use the Microsoft Graph subject rights request API"
description: "The subject rights request API provides functionality for organizations to automate repetitive tasks and integrate with their existing subject rights request tools to build repeatable workflows that can help meet industry regulations."
ms.localizationpriority: medium
author: "skadam-msft"
ms.prod: "compliance"
doc_type: conceptualPageType
---

# Use the Microsoft Graph subject rights request API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In accordance with certain privacy regulations around the world, individuals can make requests to review or manage the personal data about themselves that companies have collected. These requests are referred to as subject rights requests within the Microsoft Priva solution; they are sometimes also referred to as data subject requests (DSRs) or data subject access requests (DSARs). Microsoft Priva empowers personnel responsible for fulfilling subject rights requests to easily identify data subjects and find their personal information among an organization’s data in Exchange, SharePoint, OneDrive, and Teams. 

The Microsoft Graph APIs for subject rights request provide functionality for organizations to automate repetitive tasks and integrate with existing data subject request tools, to enable building repeatable workflows that can be incorporated to their business processes. You can use the subject rights request APIs to help you automate and scale your organization's ability to perform subject rights requests searches in Microsoft 365 and help meet industry regulations more efficiently.

> [!IMPORTANT]
> The Microsoft Graph APIs for subject rights request are intended to help meet the need to fulfill subject rights requests within Microsoft 365 services for Exchange Online, SharePoint Online, Teams chats, and OneDrive for Business. These APIs should not be used as a substitute for searching for data in any other Microsoft 365 system or any other area as those scenarios are not explicitly supported.

The API includes the following key entities.

| Name | Type       | Use case |
|:-|:-|:-|
| Subject rights request | [microsoft.graph.subjectRightsRequest](subjectRightsRequest.md) | Represents a formal request by a data subject to a controller to take an action on their personal data. |
| Data subject | [microsoft.graph.datasubject](datasubject.md) | Contains information related to the subject of a content search. |
| Subject rights request history | [microsoft.graph.subjectRightsRequesthistory](subjectRightsRequesthistory.md) | Represents the history for a subject rights request. |
| Subject rights request detail | [microsoft.graph.subjectRightsRequestDetail](subjectRightsRequestDetail.md) | Represents the details of a subject rights request, including number of items found, number of items reviewed, and so on. |
| Subject rights request stage detail | [microsoft.graph.subjectRightsRequestStageDetail](subjectRightsRequestStageDetail.md) | Represents the properties of the stages of a subject rights request. |
