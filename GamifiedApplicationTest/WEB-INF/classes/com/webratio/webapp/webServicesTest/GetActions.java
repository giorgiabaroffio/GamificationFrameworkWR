package com.webratio.webapp.webServicesTest;

public class GetActions implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _thematicArea;

    private java.lang.String _actionName;

    private java.lang.Integer _actionId;

    private java.lang.Integer _WROWNERID;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getThematicArea() {
        return _thematicArea;
    }

    public void setThematicArea(java.lang.String _thematicArea) {
        this._thematicArea = _thematicArea;
    }

    public java.lang.String getActionName() {
        return _actionName;
    }

    public void setActionName(java.lang.String _actionName) {
        this._actionName = _actionName;
    }

    public java.lang.Integer getActionId() {
        return _actionId;
    }

    public void setActionId(java.lang.Integer _actionId) {
        this._actionId = _actionId;
    }

    public java.lang.Integer getWROWNERID() {
        return _WROWNERID;
    }

    public void setWROWNERID(java.lang.Integer _WROWNERID) {
        this._WROWNERID = _WROWNERID;
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
        if (_oid != null)
            sb.append("oid=" + _oid + ',');
        if (_thematicArea != null)
            sb.append("thematicArea=" + _thematicArea + ',');
        if (_actionName != null)
            sb.append("actionName=" + _actionName + ',');
        if (_actionId != null)
            sb.append("actionId=" + _actionId + ',');
        if (_WROWNERID != null)
            sb.append("WROWNERID=" + _WROWNERID + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.webServicesTest.GetActions)) {
            return false;
        }
        com.webratio.webapp.webServicesTest.GetActions __other = (com.webratio.webapp.webServicesTest.GetActions) obj;
        java.lang.Object key = null;
        java.lang.Object otherKey = null;
        key = this.getOid();
        otherKey = __other.getOid();
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
        key = this.getOid();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        return hashCode;
    }
}
