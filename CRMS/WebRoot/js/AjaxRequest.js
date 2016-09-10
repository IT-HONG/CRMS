var net = new Object();									 // ����һ��ȫ�ֱ���net
// ��д���캯��
net.AjaxRequest = function(url, onload, onerror, method, params) {
	this.req = null;
	this.onload = onload;
	this.onerror = (onerror) ? onerror : this.defaultError;
	this.loadDate(url, method, params);
}
// ��д���ڳ�ʼ��XMLHttpRequest����ָ���������������HTTP����ķ���
net.AjaxRequest.prototype.loadDate = function(url, method, params) {
	if (!method) {
		method = "GET";
	}
	if (window.XMLHttpRequest) {
		this.req = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		this.req = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if (this.req) {
		try {
			var loader = this;
			this.req.onreadystatechange = function() {
				net.AjaxRequest.onReadyState.call(loader);
			}
			this.req.open(method, url, true);						// �����Է������ĵ���
			if (method == "POST") {							// ����ύ��ʽΪPOST
				this.req.setRequestHeader("Content-Type",
						"application/x-www-form-urlencoded");	// ��������ͷ
			}
			this.req.send(params); 							// ��������
		} catch (err) {
			this.onerror.call(this);
		}
	}
}

// �ع��ص�����
net.AjaxRequest.onReadyState = function() {
	var req = this.req;
	var ready = req.readyState;
	if (ready == 4) {											// �������
		if (req.status == 200) {								// ����ɹ�
			this.onload.call(this);
		} else {
			this.onerror.call(this);
		}
	}
}
// �ع�Ĭ�ϵĴ�������
net.AjaxRequest.prototype.defaultError = function() {
	alert("��������\n\n�ص�״̬:" + this.req.readyState + "\n״̬: " + this.req.status);
}
