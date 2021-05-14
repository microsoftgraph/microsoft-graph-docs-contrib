---
title: "Quickstart – Create your first custom Microsoft Graph connector"
description: "Quickstart – Create your first custom Microsoft Graph connector"
localization_priority: Priority
author: mecampos
doc_type: conceptualPageType
---

# Quickstart – Create your first custom Microsoft Graph connector

# Introduction

With Microsoft Graph connectors, you can add your own data into Microsoft Graph and have it power various Microsoft 365 experiences.

This .NET Core application shows you how to use the Microsoft Graph Connector API to create a customer connector and use it to power Microsoft Search. The sample uses a fictitious data appliance parts inventory for the Contoso Appliance Repair.

# How does the sample work?

:::image type="content" source="images/connectors-images/build1.png" alt-text="How does the sample work":::

# Prerequisites

1. Visual studio 2019 with [.NET Core 3.1 SDK](https://www.microsoft.com/net/download/core) installed on your development computer.
2. Either a [personal Microsoft account](https://signup.live.com/) or a work or school account.
3. The application ID and key, from the application that you registered on the [App Registration Portal](#RegisterAnAppInAzurePortal).
4. [Entity Framework Core Tools](https://docs.microsoft.com/ef/core/miscellaneous/cli/dotnet) (dotnet tool install --global dotnet-ef)
5. A tool to update a SQLite database. For example, the [DB Browser for SQLite](https://sqlitebrowser.org/).
6. Download **ApplianceParts.csv** file from [https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/master/PartsInventoryConnector/ApplianceParts.csv](https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/master/PartsInventoryConnector/ApplianceParts.csv) and add it to the PartsInventoryConnector.csproj
