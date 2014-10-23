package com.webratio.webapp.webServicesTest;

public class GetUserRewards implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _rewardName;

    private java.lang.Integer _rewardID;

    private java.math.BigDecimal _neededPoints;

    private java.lang.String _userEmail;

    private java.lang.Integer _WROWNERID;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getRewardName() {
        return _rewardName;
    }

    public void setRewardName(java.lang.String _rewardName) {
        this._rewardName = _rewardName;
    }

    public java.lang.Integer getRewardID() {
        return _rewardID;
    }

    public void setRewardID(java.lang.Integer _rewardID) {
        this._rewardID = _rewardID;
    }

    public java.math.BigDecimal getNeededPoints() {
        return _neededPoints;
    }

    public void setNeededPoints(java.math.BigDecimal _neededPoints) {
        this._neededPoints = _neededPoints;
    }

    public java.lang.String getUserEmail() {
        return _userEmail;
    }

    public void setUserEmail(java.lang.String _userEmail) {
        this._userEmail = _userEmail;
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
        if (_rewardName != null)
            sb.append("rewardName=" + _rewardName + ',');
        if (_rewardID != null)
            sb.append("rewardID=" + _rewardID + ',');
        if (_neededPoints != null)
            sb.append("neededPoints=" + _neededPoints + ',');
        if (_userEmail != null)
            sb.append("userEmail=" + _userEmail + ',');
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
        if (!(obj instanceof com.webratio.webapp.webServicesTest.GetUserRewards)) {
            return false;
        }
        com.webratio.webapp.webServicesTest.GetUserRewards __other = (com.webratio.webapp.webServicesTest.GetUserRewards) obj;
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
