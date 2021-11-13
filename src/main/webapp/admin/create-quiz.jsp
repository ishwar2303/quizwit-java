<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ include file="/includes/layout.jsp" %>
    <title>Dashboard</title>
</head>
<body>
	<%@ include file="/admin/includes/header.jsp" %>  


    <div class="flex-col dashboard-wrapper">
        <div class="header-padding"></div>
        <div class="dashboard-body">
            <%@ include file="/admin/includes/nav-panel.jsp" %>
            <div class="component-loader">
                <div class="component">
                    <h2 class="component-header">Create Quiz</h2>
                    <div>
                    	<div class="form-container">
		                    <form id="create-quiz-form">
		                        <div class="form-block flex-row flex-1">
		                            <div class="input-container">
		                                <label >Name</label>
		                                <input type="text" name="name"/>
		                                <div class="form-response"></div>
		                            </div>
		                        </div>
		                        <div class="form-block flex-row flex-1">
		                            <div class="input-container">
		                                <label >Description</label>
		                                <textarea style="height: 200px;" type="text" name="description"></textarea>
		                                <div class="form-response"></div>
		                            </div>
		                        </div>
		                        <div class="flex-row flex-1 mb-10">
		                            <div class="form-block flex-col flex-1">
		                                <div class="input-container">
		                                    <label >Key</label>
		                                    <input type="text" name="text"/>
		                                    <div class="form-response"></div>	
		                                </div>
		                            </div>
		                        </div>
		                        <div class="form-block flex-row flex-1">
		                            <div class="card small-msg">
		                                <p class="input-label mb-5">Difficulty Level</p>
		                                <div class="select-option-container">
		                                    <label class="">
		                                        <input type="radio" name="difficultyLevel" value="1">
		                                        <span>
		                                            Beginner
		                                        </span>
		                                    </label>
		                                    <label class="">
		                                        <input type="radio" name="difficultyLevel" value="2">
		                                        <span>
		                                            Intermediate
		                                        </span>
		                                    </label>
		                                    <label class="">
		                                        <input type="radio" name="difficultyLevel" value="3">
		                                        <span>
		                                            Advance
		                                        </span>
		                                    </label>
		                                </div>
		                                <div class="form-response"></div>
		                            </div>
		    
		                            <div class="card small-msg">
		                                <p class="input-label mb-5">State</p>
		                                <div class="select-option-container">
		                                    <label class="">
		                                        <input type="radio" name="state" value="1">
		                                        <span>
		                                            Active
		                                        </span>
		                                    </label>
		                                    <label class="">
		                                        <input type="radio" name="state" value="2">
		                                        <span>
		                                            Inactive
		                                        </span>
		                                    </label>
		                                </div>
		                                <div class="form-response"></div>
		                            </div>
		                        </div>
		                        <div class="form-block flex-row flex-1">
		                            <div class="card small-msg">
		                                <p class="input-label mb-5">Time Duration</p>
		                                <div class="select-option-container">
		                                    <label class="">
		                                        <input type="radio" name="duration" value="1">
		                                        <span>
		                                            15 Mins
		                                        </span>
		                                    </label>
		                                    <label class="">
		                                        <input type="radio" name="duration" value="1">
		                                        <span>
		                                            30 Mins
		                                        </span>
		                                    </label>
		                                    <label class="">
		                                        <input type="radio" name="duration" value="1">
		                                        <span>
		                                            45 Mins
		                                        </span>
		                                    </label>
		                                    <label class="">
		                                        <input type="radio" name="duration" value="1">
		                                        <span>
		                                            1 Hr
		                                        </span>
		                                    </label>
		                                    <label class="">
		                                        <input type="radio" name="duration" value="1">
		                                        <span>
		                                            2 Hr
		                                        </span>
		                                    </label>
		                                    <label class="">
		                                        <input type="radio" name="duration" value="1">
		                                        <span>
		                                            3 Hr
		                                        </span>
		                                    </label>
		                                </div>
		                                <div class="form-response"></div>
		                            </div>
		                        </div>
		                        <div class="form-block flex-row flex-1">
		                            <div class="input-container">
		                                <label >Start Time</label>
		                                <input  type="datetime-local" name="startTime"/>
		                                <div class="form-response"></div>
		                            </div>
		                            <div class="input-container">
		                                <label >End Time</label>
		                                <input  type="datetime-local" name="endTime"/>
		                                <div class="form-response"></div>
		                            </div>
		                        </div>
		    
		                        <div class="flex-row space-between btn-container">
		                            <span id="reset-form-btn" class="btn btn-cancel">Reset</span>
		                            <button class="btn btn-submit">Submit</button>
		                        </div>
		                        <div class="form-footer">
		                            
		                        </div>
		                    </form>
		                </div>
                    </div>
	                
                </div>
                <%@ include file="/admin/includes/footer.jsp" %>  
            </div>
        </div>
    </div>
</body>
</html>