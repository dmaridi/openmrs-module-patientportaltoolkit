
${ ui.includeFragment("patientportaltoolkit", "patientPortalNav") }
<script type="text/javascript">
    \$(document).ready(function(){
        \$('#patientPortalNavHome').addClass('active');
    });
</script>
<body>
<div class="container bgcontent col-sm-8 col-sm-offset-2">
    ${ ui.includeFragment("patientportaltoolkit", "profileHeader") }
    <% if(person.isPatient() && securitylevel != 1) { %>
    <ul class="nav nav-pills">
    <li class="active"><a data-toggle="tab" href="#treatments">Treatments</a></li>
    <li><a data-toggle="tab" href="#sideEffects">Side Effects</a></li>
    <li><a data-toggle="tab" href="#followUpCare">Follow up Care</a></li>
    <li><a data-toggle="tab" href="#community">Communities</a></li>
    <li><a data-toggle="tab" href="#symptomManagement">Symtom Management</a></li>
    </ul>


    <div class="tab-content">
        <div id="treatments" class="tab-pane fade in active">
            ${ ui.includeFragment("patientportaltoolkit", "treatments") }
        </div>
        <div id="sideEffects" class="tab-pane fade">
            ${ ui.includeFragment("patientportaltoolkit", "sideEffects") }
        </div>
        <div id="followUpCare" class="tab-pane fade">
            ${ ui.includeFragment("patientportaltoolkit", "appointments") }
        </div>
        <div id="community" class="tab-pane fade">
            ${ ui.includeFragment("patientportaltoolkit", "community") }
        </div>
        <div id="symptomManagement" class="tab-pane fade">
            ${ ui.includeFragment("patientportaltoolkit", "symptomManagement") }
        </div>
    </div>
    <% } %>
</div>
</body>