package com.webratio.webapp.webServicesTest;

public class GetUserCredits implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _userEmail;

    private java.math.BigDecimal _creditAvailable;

    private java.math.BigDecimal _creditSpent;

    private java.math.BigDecimal _totalCredit;

    private java.lang.Integer _WROWNERID;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getUserEmail() {
        return _userEmail;
    }

    public void setUserEmail(java.lang.String _userEmail) {
        this._userEmail = _userEmail;
    }

    public java.math.BigDecimal getCreditAvailable() {
        return _creditAvailable;
    }

    public void setCreditAvailable(java.math.BigDecimal _creditAvailable) {
        this._creditAvailable = _creditAvailable;
    }

    public java.math.BigDecimal getCreditSpent() {
        return _creditSpent;
    }

    public void setCreditSpent(java.math.BigDecimal _creditSpent) {
        this._creditSpent = _creditSpent;
    }

    public java.math.BigDecimal getTotalCredit() {
        return _totalCredit;
    }

    public void setTotalCredit(java.math.BigDecimal _totalCredit) {
        this._totalCredit = _totalCredit;
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
        if (_userEmail != null)
            sb.append("userEmail=" + _userEmail + ',');
        if (_creditAvailable != null)
            sb.append("creditAvailable=" + _creditAvailable + ',');
        if (_creditSpent != null)
            sb.append("creditSpent=" + _creditSpent + ',');
        if (_totalCredit != null)
            sb.append("totalCredit=" + _totalCredit + ',');
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
        if (!(obj instanceof com.webratio.webapp.webServicesTest.GetUserCredits)) {
            return false;
        }
        com.webratio.webapp.webServicesTest.GetUserCredits __other = (com.webratio.webapp.webServicesTest.GetUserCredits) obj;
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
