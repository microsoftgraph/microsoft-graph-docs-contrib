---
title: "Overview of the industry data API in Microsoft Graph (preview)"
description: "Use the industry data API in Microsoft Graph to build solutions that integrate with resources for insights and analytics scenarios."
author: "vfranks"
ms.localizationpriority: high
ms.prod: "industry-data-etl"
ms.custom: scenarios:getting-started
doc_type: conceptual
---

# Overview of the industry data API in Microsoft Graph (preview)

The industry data API in Microsoft Graph is a multi-vertical, cross-industry, ETL (Extract-Transform-Load) platform that combines data from multiple sources into a single Azure Data Lake data store, normalizes the data, and exports it in outbound flows. Use the API to retrieve statistics after the data is processed, and assist with monitoring and troubleshooting.

Currently, the API is highly tailored to the education industry.

## Why integrate with the industry API?

### Build applications that upload and monitor

Most education software developers learn early on that class roster is one of the key pieces of information they need to run their application, and it's typically locked away inside a school student information system (SIS). Any time teachers bring a new application into their classroom, they spend time manually importing roster data into the app. Many independent software vendors (ISVs) address this by connecting with a SIS to import roster data. With hundreds of student information systems with proprietary formats, this can become a challenge.

[Microsoft School Data Sync](https://sds.microsoft.com/), combined with the industry data API, addresses this challenge for application developers and schools. The following are some of the scenarios that the industry data API enables:

- [Upload and validate CSV data](/graph/api/resources/industrydata-overview?view=graph-rest-beta&preserve-view=true#upload-and-validate-csv-data)
- [Validate uploaded files](/graph/api/resources/industrydata-overview?view=graph-rest-beta&preserve-view=true#validate-uploaded-files)

### Enable school admins to manage identity and roster sync using School Data Sync (preview)

Use the industry data API to manage end-to-end synchronization scenarios with School Data Sync.

School Data Sync helps automate the process of importing and synchronizing student identity and roster data from an SIS<!--with Azure Active Directory (Azure AD) and Microsoft 365. When the information is synchronized, you can use the Education roster APIs to read the roster information into the applications-->. A system integrator who configures the integration of a SIS of a school with School Data Sync can use the industry data API to set up synchronization from either a CSV file or a supported SIS API connector.

## API reference

Looking for the API reference for this service?

- [Industry data API in Microsoft Graph beta](/graph/api/resources/industrydata-overview?view=graph-rest-beta&preserve-view=true)

## Next steps

- To learn more about the industry data APIs as tailored to the education sector, see [Use the industry data API as an extract, transform, and load (ETL) engine](/graph/api/resources/industrydata-overview?view=graph-rest-beta&preserve-view=true).
- Learn more about [education scenarios in Microsoft Graph](education-concept-overview.md).
- Set up an [education demo developer tenant](/graph/msgraph-onboarding-overview), [School Data Sync](/schooldatasync/school-data-sync-overview), and [Microsoft Teams](msgraph-onboarding-msteams.md).
- Try the industry data APIs in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
