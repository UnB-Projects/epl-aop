package br.unb.cic.epl.spl.height;

public privileged aspect SubHeight {
	public Integer br.unb.cic.epl.spl.sub.Sub.height() {
		Integer left  = lhs.height();
		Integer right = rhs.height();
		return Math.max(left+1, right+1);
	}
}
