---
title: "Host the connector as a windows service"
ms.author: rchanda
author: rchanda1392
manager: harshkum
ms.audience: Admin
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
ms.date: 07/01/2022
description: "Microsoft Graph connectors SDK Sample Hosting"
---

# Host the Microsoft Graph connector as a Windows service

The connector executable must be always running so that the connector platform can make requests to it during the crawls or to perform any connection management operations. The executable won't be actively consuming any resources except for the times when the connector is being crawled. The rest of the time, the connector executable will just be idle.

One possible way to make the connector executable run always is to host it as a windows service. If the executable is registered as a windows service, the OS will take care of starting the process, and respawning it if there's a crash.

Follow the instructions below for hosting the connector as a windows service:

1. Use the right mouse button on the solution containing the custom connector project and select **Add** > **New project**

2. Search for "**Worker service**" template, select it and select **Next**
    ![Screenshot2](images/connectors-sdk/service2.png)

3. Name the project as **CustomConnectorWorkerService** and select **Next**

4. Choose **.NET core 3.1** as target framework and select on **Create**

5. Use the right mouse button on the worker service project and select "**Open in Terminal**"

6. Run the following commands in the terminal

    ```dotnetcli
    dotnet add package Microsoft.Extensions.Hosting --version 6.0.0
    dotnet add package Microsoft.Extensions.Hosting.WindowsServices --version 6.0.0

    ```

7. Use the right mouse button on the worker service project and select **Add** > **Project Reference**

8. Select the **CustomConnector** project and select **Ok**
    ![Screenshot7](images/connectors-sdk/service7.png)

9. Replace the code in **Worker.cs** file with the following code:

    ```csharp
    using CustomConnector.Server;
    
    using Microsoft.Extensions.Hosting;
    using Microsoft.Extensions.Logging;
    
    using System.Threading;
    using System.Threading.Tasks;
    
    namespace CustomConnectorWorkerService
    {
        public class Worker : BackgroundService
        {
            public Worker(ILogger<Worker> logger)
            {
                var server = new ConnectorServer();
                server.Start();
            }
    
            protected override async Task ExecuteAsync(CancellationToken stoppingToken)
            {
                while (!stoppingToken.IsCancellationRequested)
                {
                    await Task.Delay(1000);
                }
            }
        }
    }

    ```

10. Replace the code in **Program.cs** with the following:

    ```csharp
    using Microsoft.Extensions.DependencyInjection;
    using Microsoft.Extensions.Hosting;
    
    namespace CustomConnectorWorkerService
    {
        public class Program
        {
            public static void Main(string[] args)
            {
                CreateHostBuilder(args).Build().Run();
            }
    
            public static IHostBuilder CreateHostBuilder(string[] args) =>
                Host.CreateDefaultBuilder(args)
                .UseWindowsService()
                    .ConfigureServices((hostContext, services) =>
                    {
                        services.AddHostedService<Worker>();
                    });
        }
    }

    ```

11. Select **Release** configuration for build and build the **CustomConnectorWorkerService** project
    ![Screenshot8](images/connectors-sdk/service8.png)

12. Run the following script to register and start the custom connector as windows service:

    ```powershell
    $ServiceName = "CustomConnector"
    $ExePath = "<Full path of CustomConnectorWorkerService.exe from above build>"
    # Create a service with the given executable. This just creates an entry for this service.
    sc.exe create $ServiceName binPath="$ExePath" start="delayed-auto"
    # Set the service to run under a virtual account NT Service\<ServiceName>. Optionally skip this step to run the service under LOCAL SERVICE account
    sc.exe config $ServiceName obj="NT Service\$ServiceName"
    # Restarts service after 5 minutes on first, second and third failures and resets error after 1 day
    sc.exe failureflag $ServiceName 1
    sc.exe failure $ServiceName reset= 86400 actions= restart/300000/restart/300000/restart/300000
    sc.exe start $ServiceName

    ```

    >[!Note]
    >The service name must be unique for each unique connector.

13. Open services.msc and check that the service is in running state
    ![Screenshot9](images/connectors-sdk/service9.png)

You can refer documentation for **troubleshooting** issues with hosting the connector [here](/graph/custom-connector-sdk-troubleshooting#troubleshooting-errors-while-hosting-the-connector-as-a-windows-service).

## Next steps

* [Publish a connection for your custom connector](/graph/custom-connector-sdk-sample-publish)
