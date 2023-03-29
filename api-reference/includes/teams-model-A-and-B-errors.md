---
author: MariaWissler
ms.topic: include
---

<!-- markdownlint-disable MD041-->

This API has [licensing and payment requirements](/graph/teams-licenses). If these requirements are not met, the API returns one of the following errors.

| Sample error type                | Status code            | Sample error message                                                                                      |
|:---------------------------------|:-----------------------|:----------------------------------------------------------------------------------------------------------|
| E5 license requirement not met   | 402 (Payment Required) | `"...needs a valid license to access this API..."` </br> `"...tenant needs a valid license to access this API..."` |
| Evaluation capacity exceeded     | 402 (Payment Required) | `"...evaluation mode capacity has been exceeded. Use a valid billing model..."`                             |
