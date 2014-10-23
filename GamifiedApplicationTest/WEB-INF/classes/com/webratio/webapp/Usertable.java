package com.webratio.webapp;

public class Usertable implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid2;

    private java.lang.String _email;

    private java.lang.String _password;

    private java.lang.Boolean _internal;

    private java.lang.String _username;

    private float _searchScore;

    public java.lang.Integer getOid2() {
        return _oid2;
    }

    public void setOid2(java.lang.Integer _oid2) {
        this._oid2 = _oid2;
    }

    public java.lang.String getEmail() {
        return _email;
    }

    public void setEmail(java.lang.String _email) {
        this._email = _email;
    }

    public java.lang.String getPassword() {
        return _password;
    }

    public void setPassword(java.lang.String _password) {
        this._password = _password;
    }

    public java.lang.Boolean getInternal() {
        return _internal;
    }

    public void setInternal(java.lang.Boolean _internal) {
        this._internal = _internal;
    }

    public java.lang.String getUsername() {
        return _username;
    }

    public void setUsername(java.lang.String _username) {
        this._username = _username;
    }

    public float getSearchScore() {
        return _searchScore;
    }

    public void setSearchScore(float _searchScore) {
        this._searchScore = _searchScore;
    }

    public String toString() {
        java.lang.StringBuffer sb = new java.lang.StringBuffer();
        sb.append(super.toString());
        int n = sb.length() - 1;
        if (sb.charAt(n) == ']') {
            sb.setCharAt(n, ',');
        } else {
            sb.append('[');
        }
        if (_oid2 != null)
            sb.append("oid2=" + _oid2 + ',');
        if (_email != null)
            sb.append("email=" + _email + ',');
        if (_password != null)
            sb.append("password=" + _password + ',');
        if (_internal != null)
            sb.append("internal=" + _internal + ',');
        if (_username != null)
            sb.append("username=" + _username + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.Usertable)) {
            return false;
        }
        com.webratio.webapp.Usertable __other = (com.webratio.webapp.Usertable) obj;
        java.lang.Object key = null;
        java.lang.Object otherKey = null;
        key = this.getOid2();
        otherKey = __other.getOid2();
        if (key == null) {
            if (otherKey != null) {
                return false;
            }
        } else {
            if (otherKey == null) {
                return false;
            } else if (!key.equals(otherKey)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode = 0;
        java.lang.Object key = null;
        key = this.getOid2();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        return hashCode;
    }
}
