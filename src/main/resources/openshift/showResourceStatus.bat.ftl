<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
<#include "/openshift/oc-login-container.ftl">

${container.ocHome}/oc describe quota -n ${params.projectName} || goto :error
${container.ocHome}/oc logout || goto :error
goto :EOF

<#include "/openshift/error.bat.ftl">
