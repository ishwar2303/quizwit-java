const togglePanel = document.getElementById('toggle-panel')
var control = false
togglePanel.addEventListener('click', () => {
    let linkDesc = document.getElementsByClassName('link-desc')
    for(let i=0; i<linkDesc.length; i++) {
        let val = 'block'
        if(control)
            val = 'none'
        linkDesc[i].style.display = val
    }
    control = !control
})


var hideElement
const overlay = document.getElementById('overlay')
const changePasswordBtn = document.getElementById('change-password')
const changePasswordDialog = document.getElementById('change-password-dialog')

changePasswordBtn.addEventListener('click', () => {
	changePasswordDialog.style.display = 'block'
	hideElement = changePasswordDialog
	overlay.style.display = 'block'
})

overlay.addEventListener('click', () => {
	hideElement.style.display = 'none'
	overlay.style.display = 'none'
})

$('#admin-change-password-form').on('submit', (e) => {
		e.preventDefault()
		e.stopPropagation()
    let form = new FormData(e.target)
    let reqData = {
		oldPassword: form.get('oldPassword'),
        newPassword: form.get('newPassword'),
        confirmPassword: form.get('confirmPassword')
    }
    $.ajax({
        url: 'admin-change-password',
        type: 'POST',
        success: () => {

        },
        complete: (res) => {
            let msgIcon = '<i class="fa fa-exclamation-circle mr-5"></i>'
            res = JSON.parse(res.responseText)
            let responseMsg = document.getElementById('admin-change-password-form').getElementsByClassName('form-response')
            if(res.error) {
                let errorLog = res.errorLog
                console.log(errorLog)
                for(let i=0; i<responseMsg.length; i++) {
					if(errorLog[i] != '')
                    	responseMsg[i].innerHTML =  msgIcon + errorLog[i]
					else responseMsg[i].innerHTML =  ''
                }
            }
			else {
				let a = document.createElement('a')
				a.href = 'admin-login?success=' + res.success 
				a.click()
			}
	
            
        }, 
        data: reqData
    })
})


const forms = document.getElementsByTagName('form')
for(let i=0; i<forms.length; i++) {
	let resetBtn = forms[i].getElementsByClassName('btn-cancel')[0]
	if(resetBtn) {
		resetBtn.addEventListener('click', () => {
			forms[i].reset()
		})
	}
}