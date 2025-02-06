---
author: "mcm223"
ms.localizationpriority: high
ms.subservice: cloud-communications
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

The limits listed in the following table apply to the following resources:

- [callRecord](/graph/api/resources/callrecords-callrecord)
- [participant](/graph/api/resources/callrecords-participant)
- [session](/graph/api/resources/callrecords-session)

| Limit type      | Limit    |
| -------------- | ------------ |
| Per application for all tenants | 15,000 requests per 20 seconds |
| Per tenant for all applications | 10,000 requests per 20 seconds |
| Per application per tenant  | 1,500 requests per 20 seconds |
| Per call record | 10 requests per 20 seconds (first page) <br/> 50 requests per 5 minutes (subsequent pages) |
| List call records | 15 requests per 20 seconds (first page) <br/> 55 requests per 5 minutes (subsequent pages) |