﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Provisioning.UX.AppWeb.Default" Async="true"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" data-ng-app="app">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title></title>

    <!-- CSS -->
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.css"/>--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="../styles/font-awesome.min.css" />
    <link rel="stylesheet" href="../styles/toastr.css" />
    <link rel="stylesheet" href="../styles/app.css" /> 
    <link rel="stylesheet" href="../styles/peoplepickercontrol.css" />    
    
           

    

    
</head>
<body>    
    <div id="divSPChrome"></div>            
        
    <!-- Include the Wizard View -->
    <div data-ng-include="'shell.html'"></div>

    <!-- Vendor JS -->
    <script src="../scripts/vendor/jquery/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="//ajax.aspnetcdn.com/ajax/4.0/1/MicrosoftAjax.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.0-beta.6/angular.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.0-beta.6/angular-messages.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.0-beta.6/angular-animate.min.js"></script>
    <script src="../scripts/vendor/angular-ui/ui-bootstrap-tpls-0.12.1.min.js"></script>  
    <script src="../scripts/toastr.js"></script>
    <script src="../scripts/spin.js"></script>
    
        

    <!-- common Modules -->
    <script src="../scripts/wizard/modules/common.js"></script>
    <script src="../scripts/wizard/modules/logger.js"></script>
    <script src="../scripts/wizard/modules/spinner.js"></script>

    <!-- common.bootstrap Modules -->
    <script src="../scripts/bootstrap.dialog.js"></script>

    <!-- People Picker from PnP -->
    <script src="../scripts/peoplepickercontrol.js?rev=2" type="text/javascript"></script>   
    <!-- Chrome Loader -->
    <script src="../scripts/chromeloader.js?rev=1" type="text/javascript"></script>

    <!-- App JS -->
    <script src="../scripts/app.module.js"></script>    
    <script src="../scripts/wizard/controllers/shell.js"></script>
    <script src="../scripts/config.js"></script>
    <script src="../scripts/config.exceptionHandler.js"></script>
    <script src="../scripts/wizard/modules/wizard.module.js"></script>    
    <script src="../scripts/wizard/services/utilservice.js"></script>
    <script src="../scripts/wizard/services/peoplepickerfactory.js"></script>
    <script src="../scripts/wizard/controllers/wizard.controller.js"></script>
    <script src="../scripts/wizard/services/siteQueryService.js"></script>    
    <script src="../scripts/wizard/directives/restrict.js"></script>    
    <script src="../scripts/wizard/directives/formDirectives.js"></script>    
    <script src="../scripts/wizard/modal/wizard.modal.controller.js"></script>
    <script src="../scripts/wizard/modal/siteowners.peoplepicker.controller.js"></script>    
    <script src="../scripts/data/data.module.js"></script>
    <script src="../scripts/data/templates.factory.js"></script>
    <script src="../scripts/data/metadata.factory.js"></script>
    <script src="../scripts/data/appsettings.factory.js"></script>
    <script src="../scripts/wizard/services/provisioningServices.js"></script>
    <script src="../scripts/app.js"></script>    

    <script type="text/javascript">
        $(document).on('click', '.panel-heading span.clickable', function (e) {
            var $this = $(this);
            if (!$this.hasClass('panel-collapsed')) {
                $this.parents('.panel').find('.panel-body').slideUp();
                $this.addClass('panel-collapsed');
                $this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
            } else {
                $this.parents('.panel').find('.panel-body').slideDown();
                $this.removeClass('panel-collapsed');
                $this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
            }
        })
    </script>
</body>
</html>
