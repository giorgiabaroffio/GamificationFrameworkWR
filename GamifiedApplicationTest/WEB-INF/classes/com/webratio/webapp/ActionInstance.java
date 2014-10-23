package com.webratio.webapp;

public class ActionInstance implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _executor;

    private java.sql.Timestamp _date;

    private java.math.BigDecimal _score;

    private java.lang.String _description;

    private java.lang.String _tag;

    private java.lang.String _link;

    private com.webratio.webapp.Rank _actioninstanceToRank;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getExecutor() {
        return _executor;
    }

    public void setExecutor(java.lang.String _executor) {
        this._executor = _executor;
    }

    public java.sql.Timestamp getDate() {
        return _date;
    }

    public void setDate(java.sql.Timestamp _date) {
        this._date = _date;
    }

    public java.math.BigDecimal getScore() {
        return _score;
    }

    public void setScore(java.math.BigDecimal _score) {
        this._score = _score;
    }

    public java.lang.String getDescription() {
        return _description;
    }

    public void setDescription(java.lang.String _description) {
        this._description = _description;
    }

    public java.lang.String getTag() {
        return _tag;
    }

    public void setTag(java.lang.String _tag) {
        this._tag = _tag;
    }

    public java.lang.String getLink() {
        return _link;
    }

    public void setLink(java.lang.String _link) {
        this._link = _link;
    }

    public com.webratio.webapp.Rank getActioninstanceToRank() {
        return _actioninstanceToRank;
    }

    public void setActioninstanceToRank(com.webratio.webapp.Rank _actioninstanceToRank) {
        this._actioninstanceToRank = _actioninstanceToRank;
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
        if (_executor != null)
            sb.append("executor=" + _executor + ',');
        if (_date != null)
            sb.append("date=" + _date + ',');
        if (_score != null)
            sb.append("score=" + _score + ',');
        if (_description != null)
            sb.append("description=" + _description + ',');
        if (_tag != null)
            sb.append("tag=" + _tag + ',');
        if (_link != null)
            sb.append("link=" + _link + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.ActionInstance)) {
            return false;
        }
        com.webratio.webapp.ActionInstance __other = (com.webratio.webapp.ActionInstance) obj;
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
