<div class="modal fade" id="edit-relationship-modal" role="dialog" aria-labelledby="editRelationshipModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="editRelationshipModalLabel">Edit Connection</h4>
            </div>

            <div class="modal-body">
                <input id="editRelationshipIdHolder" type="hidden"/>
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="personName">Person's Name:</label>
                        <div class="col-sm-10 form-inline" id="personName">
                            <label class="form-control" id="editPersonName"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="editRelationship-type">Is My:</label>
                        <div class="col-sm-10" id="editRelationship-type">
                            <% if (relationshipTypes) { %>
                            <select class="form-control" id="editRelationshipSelect">
                                <% relationshipTypes.each { relationshipType -> %>
                                <option value="${(relationshipType.aIsToB)}">${(relationshipType.aIsToB)}</option>
                            <% } %>
                            </select>
                            <% } %>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="editRelationSecurityLevels">Have Access:</label>
                        <div class="col-sm-10 form-group">
                            <select class="form-control" id="editRelationSecurityLevels">
                                <% securityLayers.each { securityLayer -> %>
                                <option  value="${securityLayer.getUuid()}">${securityLayer.getDescription()} </option>
                                <% } %>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div class="button-div pull-right">
                    <button class="btn btn-default pad-left" id="editRelationshipSaveButton">Save</button>
                </div>
            </div>
        </div>
    </div>
</div>
