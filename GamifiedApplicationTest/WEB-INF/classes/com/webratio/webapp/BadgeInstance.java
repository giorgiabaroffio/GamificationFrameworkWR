package com.webratio.webapp;

public class BadgeInstance implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.math.BigDecimal _score;

    private java.sql.Timestamp _date;

    private com.webratio.webapp.Rank _badgeinstanceToRank;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.math.BigDecimal getScore() {
        return _score;
    }

    public void setScore(java.math.BigDecimal _score) {
        this._score = _score;
    }

    public java.sql.Timestamp getDate() {
        return _date;
    }

    public void setDate(java.sql.Timestamp _date) {
        this._date = _date;
    }

    public com.webratio.webapp.Rank getBadgeinstanceToRank() {
        return _badgeinstanceToRank;
    }

    public void setBadgeinstanceToRank(com.webratio.webapp.Rank _badgeinstanceToRank) {
        this._badgeinstanceToRank = _badgeinstanceToRank;
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
        if (_score != null)
            sb.append("score=" + _score + ',');
        if (_date != null)
            sb.append("date=" + _date + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.BadgeInstance)) {
            return false;
        }
        com.webratio.webapp.BadgeInstance __other = (com.webratio.webapp.BadgeInstance) obj;
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
