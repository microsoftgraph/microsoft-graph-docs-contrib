---
title: "industry data API overview"
description: "Use the industry data API in Microsoft Graph to build solutions that integrate with resources for insights and analytics scenarios."
author: "vfranks"
ms.localizationpriority: high
ms.prod: "industrydata"
ms.custom: scenarios:getting-started
---

# industry data API overview

The industry data API is a multi-vertical, cross-industry, ETL (Extract-Transform-Load) platform that combines data from multiple sources into a single Azure Data Lake data store, normalizes the data, and exports it in outbound flows. In the current release, the API is highly tailored to the education industry.

The API provides resources that you can use to retrieve statistics after the data is processed, and assist with monitoring and troubleshooting.

## Why integrate with scenarios?

### Build applications that upload and monitor

Most education software developers learn early on that class roster is one of the key pieces of information they need to run their application, and it's typically locked away inside a school Student Information System (SIS). Any time teachers bring a new application into their classroom, they spend time manually importing roster data into the app. Many independent software vendors (ISVs) address this by connecting with a SIS to import roster data. With hundreds of Student Information Systems with proprietary formats, this can become a challenge.

[Microsoft School Data Sync](https://sds.microsoft.com/), combined with industry data APIs, addresses this challenge for application developers and schools. The following are some of the scenarios that the industryData APIs enable:

- [Uploading and Validating CSV Data](/graph/api/resources/industry-data-overview?view=graph-rest-beta&preserve-view=true#uploading-and-validating-csv-data)
- [Validating Uploaded Files](/graph/api/resources/industry-data-overview?view=graph-rest-beta&preserve-view=true#validating-uploaded-files)

### Enable school admins to manage identity and roster sync using School Data Sync (preview)

[School Data Sync](https://sds.microsoft.com/) helps to automate the process of importing and synchronizing student identity and roster data from student information systems <!--with Azure Active Directory (Azure AD) and Microsoft 365. When the information is synchronized, you can use the Education roster APIs to read the roster information into the applications-->.

If you're a system integrator setting up integration of a school's Student Information System with School Data Sync, you can use the [industry data APIs](/graph/api/resources/industry-data-overview?view=graph-rest-beta&preserve-view=true) in Microsoft Graph to set up synchronization from either a CSV file or a supported SIS API connector.

Industry data APIs support School Data Sync end-to-end scenarios for managing syncs.

## API reference

Looking for the API reference for this service?

- [Industry data API in Microsoft Graph beta](/graph/api/resources/industry-data-overview?view=graph-rest-beta&preserve-view=true)

## Next steps

To start using the industry data APIs, see:
- [Use the industry data APIs](/graph/api/resources/industry-data-overview?view=graph-rest-beta&preserve-view=true)

Try the industry data APIs in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer)