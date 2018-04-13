package br.unb.cic.epl.spl.height;

public privileged aspect MultHeight {
	public Integer br.unb.cic.epl.spl.mult.Mult.height() {
		Integer left  = lhs.height();
		Integer right = rhs.height();
		return Math.max(left+1, right+1);
	}
}
