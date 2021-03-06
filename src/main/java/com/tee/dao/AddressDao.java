package com.tee.dao;

import com.tee.pojo.Address;

import java.util.List;

public interface AddressDao {
    /**
     * 创建收件人地址
     * @return
     */
    public int createAddress(Address address);

    /**
     * 删除收件人地址
     * @return
     */
    public int deleteAddress(Address address);

    /**
     * 通过用户名查询收件人地址
     * @param uid
     * @return
     */
    public List<Address> queryAddressByUserId(String uid);

    /**
     * 修改收件人信息
     * @param address
     * @return
     */
    public int modifyAddress(Address address);

    /**
     * 通过地址编号查询地址
     * @param addressId
     * @return
     */
    public Address searchAddressByAddressId(String addressId);
}
